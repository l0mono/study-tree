class MigrationName < ActiveRecord::Migration[6.0]
  def change
    add_column :studies, :picture, :string
  end
end
