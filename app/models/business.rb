class Business < ActiveRecord::Base
  belongs_to :user
  has_many :payable_invoices, class_name: "Invoice", foreign_key: "payer_id"
  has_many :receivable_invoices, class_name: "Invoice", foreign_key: "receiver_id"
end
