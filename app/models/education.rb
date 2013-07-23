class MyValidator < ActiveModel::Validator

  def validate(record)
    if record.end? && record.begin > record.end
      record.errors[:base] << "Begin should be lower than end"
    end
  end
  end

class Education < ActiveRecord::Base

  belongs_to :inscription
  validates :begin, presence: true
  validates :end, presence: true
  validates :school, presence: true
  validates :degree, presence: true
  validates_with MyValidator

end
