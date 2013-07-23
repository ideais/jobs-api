class Inscription < ActiveRecord::Base

  has_many :jobs
  has_many :educations
  has_one :address
  EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}/i
  validates :email, presence: true, :format => EMAIL_REGEX
  validates :name, presence: true
  validates :about, presence: true

end
