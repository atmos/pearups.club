class Student < ActiveRecord::Base

  # Ensure the student has a name
  validates :name, presence: true

  # Ensure the student wants some skills
  validates :wanted_skills, presence: true

  # Ensure the student has an email
  validates :email, presence: true
end
