class Actor < ApplicationRecord
  validates :first_name, :last_name,
    presence: true

  validates :gender,
    presence: true,
    inclusion: { in: ['m', 'f'], allow_blank: true }

  # Add a custom validation to check that birthdate is not
  # in the future.
  #
  validate do
    if birthdate.present? && birthdate >= Date.today
      errors.add(:birthdate, "can't be in the future")
    end
  end


  has_many :roles,
    dependent: :destroy

  has_many :movies,
    through: :roles


  def full_name
    "#{first_name_was} #{last_name_was}"
  end

  def to_param
    "#{id}-#{full_name.parameterize}"
  end

  def age
    if birthdate.present?
      now = Date.today
      now.year - birthdate.year - ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
    end
  end

  def male?
    gender == "m"
  end

  def female?
    gender == "f"
  end
end
