class Subject < ApplicationRecord
    belongs_to :teacher
    has_many :enrollments
    has_many :students, through: :enrollments

    validates :subject_name, :subject_code, presence: true

    def self.search(search)
        where("subject_name LIKE ? OR subject_code LIKE ?", "%#{search}%", "%#{search}%") 
    end
end
