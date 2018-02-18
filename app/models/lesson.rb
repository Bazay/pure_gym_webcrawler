# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  gym_id     :integer
#  time       :datetime
#  duration   :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lesson < ActiveRecord::Base
  belongs_to :gym

  validates :gym, presence: true
end
