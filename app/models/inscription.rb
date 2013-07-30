class Inscription < ActiveRecord::Base

  has_many :jobs
  has_many :educations
  has_one :address
  validates :email, email_format: { message: "doesn't look like an email address" }
  validates :name, presence: true
  validates :about, presence: true

end
