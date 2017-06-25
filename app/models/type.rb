class Type < ActiveRecord::Base
  validates :title, :value , presence: true

end
