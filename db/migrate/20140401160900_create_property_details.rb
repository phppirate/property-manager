class CreatePropertyDetails < ActiveRecord::Migration
  def change
    create_table :property_details do |t|
      t.integer :property_id
      t.string :name
      t.string :source_type
      t.text :source_contact
      t.string :status
      t.string :date_of_contact
      t.string :requirements
      t.text :comments

      t.timestamps
    end
  end
end
