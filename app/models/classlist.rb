class Classlist < ApplicationRecord
	has_many :subjects
	has_many :enrollments
	has_many :teachers
	has_many :students
end
