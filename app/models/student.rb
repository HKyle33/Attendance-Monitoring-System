class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :students_subject
  has_many :subjects, :through => :students_subject
  has_many :attendances
  has_one :teacher, :through => :subjects
end
