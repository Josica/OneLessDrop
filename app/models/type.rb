class Type < ActiveRecord::Base
  validates :type, :value , presence: true
  
end
