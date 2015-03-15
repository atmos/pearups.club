class Mentor < ActiveRecord::Base

  # Ensure the mentor has a name
  validates :name, presence: true

  # Ensure the mentor has some skills to offer
  validates :skills, presence: true

  # Ensure the mentor has an email
  validates :email, presence: true
end
