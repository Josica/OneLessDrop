class Average < ActiveRecord::Base
  validates :name, :value, presence: true
  
end
