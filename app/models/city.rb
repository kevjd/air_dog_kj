class City < ApplicationRecord
  has_many :join_table_dogsitters
  has_many :join_table_dogs
  has_many :dogsitters, through: :join_table_dogsitters
  has_many :dogs, through: :join_table_dogs

end
