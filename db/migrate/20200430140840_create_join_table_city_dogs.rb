class CreateJoinTableCityDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_city_dogs do |t|
      t.belongs_to :city, index: true
      t.belongs_to :dog, index: true

      t.timestamps
    end
  end
end
