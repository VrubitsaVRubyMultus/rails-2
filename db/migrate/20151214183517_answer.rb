class Answer < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
      t.text :body
      t.string :sourses
      t.timestamps null: false
    end
  end
end
