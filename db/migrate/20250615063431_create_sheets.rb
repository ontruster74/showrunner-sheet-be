class CreateSheets < ActiveRecord::Migration[7.1]
  def change
    create_table :sheets do |t|
      t.string :title
      t.jsonb :answers
      t.string :slug

      t.timestamps
    end
    add_index :sheets, :slug, unique: true
  end
end
