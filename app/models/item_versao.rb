class ItemVersao < ActiveRecord::Base
  self.table_name = "WONDER.WSI_ITENS_VERSAO"
  self.primary_key = "w_id"

  belongs_to :versao, class_name: "Versao", foreign_key: "w_id_versao", primary_key: "w_id"
end