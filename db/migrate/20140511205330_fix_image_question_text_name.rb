class FixImageQuestionTextName < ActiveRecord::Migration
  def change
  	rename_column :imagequestions, :text_description, :hint
  end
end
