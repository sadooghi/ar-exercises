class Store < ActiveRecord::Base

  has_many :employees

  # validates :name, presence: true, length: {minimum: 3}
  # validates :annual_revenue, is_a? Integer: true,

end


