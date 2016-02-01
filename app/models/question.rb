class Question < ActiveRecord::Base
	has_many :answers
	has_many :attachments, as: :attachable
	belongs_to :user
	accepts_nested_attributes_for :attachments
end
