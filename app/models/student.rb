class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :subjects, optional: true
  has_many :attendances
  has_one :teacher, :through => :subjects

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }, unless: "password.nil?"
  validates :password, presence: true, if: "id.nil?"

  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/}
end
