class Aassignment < ActiveRecord::Base

  validates :title, :description, :date, :due, presence: true
  validate :due_date
  # validate :required_or_optional

  has_many :tturn_ins

  def due_date
    if date >= due
      errors.add(:due_date, ", due date must be after day assigned")
    end
  end

  def retrieve_tturn_in(user)
    self.tturn_ins.find_by_user_id(user.id)
  end

  # def required?
  #   @required
  # end
  # def optional?
  #   @optional
  # end
  # def required_or_optional
  #   unless required? || optional?
  #     errors[:base] << "Required or Optional must be selected"
  #   end
  # end
end
