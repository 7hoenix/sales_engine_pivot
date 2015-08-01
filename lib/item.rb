require_relative 'data_instance'

class Item < DataInstance
  attr_reader :name, :description, :unit_price, :merchant_id


  def invoice_items
    repository.invoice_items_for_an_item(id)
  end

  def merchant
    repository.merchant_for_an_item(merchant_id)
  end
end
