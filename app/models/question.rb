class Question < ApplicationRecord
	belongs_to :survey
	has_many :answers
	has_many :choices
	accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
