class CreateImagequestions < ActiveRecord::Migration
  def change
    create_table :imagequestions do |t|
      t.string :file_name
      t.string :text_description
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
