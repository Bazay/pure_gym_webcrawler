# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  email               :string           default(""), not null
#  encrypted_password  :string           default(""), not null
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  current_sign_in_at  :datetime
#  last_sign_in_at     :datetime
#  current_sign_in_ip  :inet
#  last_sign_in_ip     :inet
#  first_name          :string           default(""), not null
#  last_name           :string           default(""), not null
#  gym_login_email     :string           default(""), not null
#  gym_login_password  :string           default(""), not null
#  gym_login_url       :string           default(""), not null
#  gym_refresh_period  :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable

  before_validation :default_attribute_values

  private

  def default_attribute_values
    self.gym_refresh_period = 7 unless gym_refresh_period
  end
end
