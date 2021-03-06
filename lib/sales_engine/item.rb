module SalesEngine
  class Item

    extend Searchable

    attr_accessor :id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at

    def initialize(attributes)
      self.id = attributes[:id]
      self.name = attributes[:name]
      self.description = attributes[:description]
      self.unit_price = attributes[:unit_price]
      self.merchant_id = attributes[:merchant_id]
      self.created_at = attributes[:created_at]
      self.updated_at = attributes[:updated_at]
    end

    class << self
      [:id, :name, :description, :unit_price, 
       :merchant_id, :created_at, 
       :updated_at].each do |attribute|
        define_method "find_by_#{attribute}" do |input|
          find_by_(attribute, input)
        end
      end

      [:id, :name, :description, :unit_price, 
       :merchant_id, :created_at, 
       :updated_at].each do |attribute|
        define_method "find_all_by_#{attribute}" do |input|
          find_all_by_(attribute, input)
        end
      end
    end

    def self.collection
      SalesEngine::Database.instance.items
    end

    # def load(filename)

    # end

    # def invoice_items
    #   # invoice_items returns an instance of InvoiceItems associated with this object
    # end
    
    # def merchant
    #   # merchant returns an instance of Merchant associated with this object    
    # end

  end
end