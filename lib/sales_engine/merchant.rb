class Merchant
  attr_accessor :id, :name, :created_at, :updated_at

  # def initialize

  # end

  def find_by(attribute)
    
  end

  def random
    # rand(Database.instance.merchants)
  end

  def self.find_by_(attribute)

  end

  def self.find_all_by_(attribute)
    
  end

  # def items
  #   # returns a collection of Item instances associated with that merchant for the products they sell
  # end

  # def invoices
  #   # returns a collection of Invoice instances associated with that merchant from their known orders
  # end

  # def most_revenue()
  #   # returns the top x merchant instances ranked by total revenue
  # end  
  
  # def most_items()
  #   # returns the top x merchant instances ranked by total number of items sold
  # end

  # def revenue(date)
  #   # returns the total revenue for that date across all merchants
  # end

  # def revenue
  #   # returns the total revenue for that merchant across all transactions
  # end

  # def favorite_customer
  #   # returns the Customer who has conducted the most transactions
  # end

  # def customers_with_pending_invoices
  #   # returns a collection of Customer instances which have pending (unpaid) invoices    
  # end

end