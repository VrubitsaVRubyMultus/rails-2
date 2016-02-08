class Question < ActiveRecord::Base
	has_many :answers, dependent: :destroy
	has_many :attachments, dependent: :destroy, as: :attachable
	belongs_to :user
	accepts_nested_attributes_for :attachments
end
