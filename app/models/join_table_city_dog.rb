class JoinTableCityDog < ApplicationRecord
  belongs_to :city
  belongs_to :dog
end
