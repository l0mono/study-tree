class CreateStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :studies do |t|
      t.string :book
      t.integer :time
      t.integer :page
      t.text :note
      t.date :published_at

      t.timestamps
    end
  end
end
