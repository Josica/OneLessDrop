class Answer < ActiveRecord::Base
  validates :result, presence: true

  belongs_to :question
  belongs_to :user 
end
