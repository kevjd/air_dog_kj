class JoinTableCityDogsitter < ApplicationRecord
  belongs_to :city
  belongs_to :dog_sitter
end
