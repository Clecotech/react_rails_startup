class Answer < ApplicationRecord
	belongs_to :question
	belongs_to :choice
	has_and_belongs_to_many :users
  
end
