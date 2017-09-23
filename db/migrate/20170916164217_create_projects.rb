class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.decimal :budget
      t.references :currency
      t.string :status
      t.string :priority_id
      t.boolean :published
      t.string :time_limit
      t.references :user
      t.string :slug, uniqueness: true


      t.timestamps
    end
  end
end