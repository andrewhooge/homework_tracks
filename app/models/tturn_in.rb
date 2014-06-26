class TturnIn < ActiveRecord::Base
  has_many :assignments
  belongs_to :user

end
