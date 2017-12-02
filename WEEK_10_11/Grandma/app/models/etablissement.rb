class Etablissement < ApplicationRecord
	has_many :missions
	has_many :benevoles, through: :missions
end
