class Answer < ActiveRecord::Base
	belongs_to :question
	has_many :attachment, as: :attacheble
end