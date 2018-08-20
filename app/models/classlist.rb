class Classlist < ApplicationRecord
	has_many :subjects
	has_many :enrollments
end
