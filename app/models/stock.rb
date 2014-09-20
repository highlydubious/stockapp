class Stock
  include Mongoid::Document
  field :name, type: String
  field :symbol, type: String
  field :current_price, type: Integer

  # WHAT DO I STICK IN HERE AS ATTRIBUTES OF STOCKS ???

  has_many :notes
  accepts_nested_attributes_for :notes
  
end
