class CreateProfessions < ActiveRecord::Migration[5.1]
  def change
    create_table :professions do |t|
      t.string :title
      t.references :domain, null: false

      t.timestamps
    end
  end
end
