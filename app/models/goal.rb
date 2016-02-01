# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  description :text             not null
#  user_id     :integer          not null
#  completed   :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  pprivate    :boolean          default(FALSE), not null
#

class Goal < ActiveRecord::Base
  validates :description, :user_id, :completed, :pprivate, presence: true

  has_many :comments, as: :commentable
  belongs_to :user
end
