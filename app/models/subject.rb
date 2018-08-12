class Subject < ApplicationRecord
    belongs_to :teacher
    has_many :students_subject
    has_many :students, :through => :students_subject
end
