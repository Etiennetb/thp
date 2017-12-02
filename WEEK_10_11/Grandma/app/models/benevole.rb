class Benevole < ApplicationRecord
	has_many :missions
	has_many :etablissements, through: :missions
end
