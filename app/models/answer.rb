class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :user
	has_many :attachment, dependent: :destroy, as: :attacheble
	#is_indexed :fields => ['head', 'body']
end