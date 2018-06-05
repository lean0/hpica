class CreateActus < ActiveRecord::Migration[5.2]
  def change
    create_table :actus do |t|
      t.string :title
      t.string :pwd
      t.string :content

      t.timestamps
    end
  end
end
