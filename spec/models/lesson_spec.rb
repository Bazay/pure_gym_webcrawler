# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  gym_id     :integer
#  time       :string
#  duration   :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Lesson, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
