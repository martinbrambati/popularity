class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :option_label
      t.boolean :option_result
      t.belongs_to :imagequestion, index: true

      t.timestamps
    end
  end
end
