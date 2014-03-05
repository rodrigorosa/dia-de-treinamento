class ItemVersao < ActiveRecord::Base
  self.table_name = "WONDER.WSI_ITENS_VERSAO"
  self.primary_key = "w_id"

  belongs_to :versao, class_name: "Versao", foreign_key: "w_id_versao", primary_key: "w_id"
  belongs_to :modulo, class_name: "Modulo", foreign_key: "w_id_modulo", primary_key: "w_id"
  belongs_to :evento, class_name: "Evento", foreign_key: "w_id_evento", primary_key: "w_id"

  scope :incluir_treinamento, -> { where(incluir_treinamento: 'S') }
  scope :por_modulo, -> {order(:w_id_modulo)}

  def usuario
    usuario_re = /[a-zA-Z]+/
    w_dt_criacao.match(usuario_re).to_s
  end

  def cod_evento
    evento.codigo if evento
  end

  def descricao_item
    desc_cliente ? desc_cliente : descricao
  end
end