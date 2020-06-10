class Survey < ApplicationRecord
	has_many :questions
	has_many :userexamrecords
	belongs_to :user,optional: true
  	accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
