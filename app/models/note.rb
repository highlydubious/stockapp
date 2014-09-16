class Note
  include Mongoid::Document
  field :market, type: String
  field :date, type: String
  field :timeframe, type: String
  field :comment, type: String

  belongs_to :stock
end
