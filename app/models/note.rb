class Note
  include Mongoid::Document
  field :market, type: String
  field :date, type: Time
  field :timeframe, type: String
  field :direction, type: Boolean
  field :comment, type: String

  belongs_to :stock
end
