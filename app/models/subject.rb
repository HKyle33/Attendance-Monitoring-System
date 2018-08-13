class Subject < ApplicationRecord
    belongs_to :teacher
    has_and_belongs_to_many :students, optional: true

    validates :subject_name, :subject_code, presence: true

    def self.search(search)
        where("subject_name LIKE ? OR subject_code LIKE ?", "%#{search}%", "%#{search}%") 
    end
end
