class ItemVersao < ActiveRecord::Base
  self.table_name = "WONDER.WSI_ITENS_VERSAO"
  self.primary_key = "w_id"

  belongs_to :versao, class_name: "Versao", foreign_key: "w_id_versao", primary_key: "w_id"

  scope :not_null, -> { where.not(titulo: :nill).where.not(desc_cliente: :nill) }

  def usuario
    usuario_re = /[a-zA-Z]+/
    w_dt_criacao.match(usuario_re)
  end
end