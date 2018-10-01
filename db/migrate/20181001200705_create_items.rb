class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :make, :string
      t.column :country_of_origin, :string
      t.column :gifted_by, :string
      t.column :borrowed_by, :string
      t.column :borrowed_from, :string
      t.column :make, :string
      t.column :price, :decimal, precision: 8, scale: 2
      t.column :quantity, :integer
      t.column :usage_per_month, :integer
      t.column :usage_per_day, :integer
      t.column :usage_per_year, :integer
      t.column :usage_per_week, :integer
      t.column :months_used, :string

      t.timestamps
    end
  end
end
