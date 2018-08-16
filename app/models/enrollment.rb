class Enrollment < ApplicationRecord
  attr_accessible :student_id, :subject_id
  belongs_to :student
  belongs_to :subject
end
