class Aassignment < ActiveRecord::Base
    belongs_to :user

  validates :title, :description, :date, :due, presence: true
  validate :due_date
  # validate :required_or_optional

  private

  def due_date
    if date >= due
      errors.add(:due_date, ", due date must be after day assigned")
    end
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
