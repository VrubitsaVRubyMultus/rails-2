class AddHeadToAnswer < ActiveRecord::Migration
  def change
  	add_column :answers, :head, :string
  end
end
