class MyValidator < ActiveModel::Validator

  def validate(record)
    if record.end? && record.begin > record.end
      record.errors[:base] << "Begin should be lower than end"
    end
  end
end

class Job < ActiveRecord::Base

  belongs_to :inscription
  validates :begin, presence: true
  validates :company, presence: true
  validates :title, presence: true
  validates_with MyValidator

end
