class CreateJoinTableCityDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_city_dogsitters do |t|
      t.belongs_to :city, index: true
      t.belongs_to :dog_sitter, index: true

      t.timestamps
    end
  end
end
