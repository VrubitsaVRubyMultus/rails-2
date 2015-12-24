class ChangeSoursesColumn < ActiveRecord::Migration
  def change
  	rename_column :answers, :sourses, :sources
  	change_column :answers, :sources, :text
  end
end
