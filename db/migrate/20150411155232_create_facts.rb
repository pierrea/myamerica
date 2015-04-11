class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :fact_type
      t.string :title
      t.text :description
      t.integer :location_id
      t.timestamps
    end

    create_table :locations do |t|
      t.integer :rec_area_id
      t.string :title
      t.decimal :lat
      t.decimal :lng
      t.timestamps
    end
  end
end