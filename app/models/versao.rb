class Versao < ActiveRecord::Base
  self.table_name = "WONDER.WSI_VERSOES"
  self.primary_key = "w_id"

  has_many :itens_versao, class_name: "ItemVersao", foreign_key: "w_id_versao", primary_key: "w_id"

  default_scope  -> {where(compilacao: 1)}
  scope :ultimas, -> {order(w_id: :desc)}
end