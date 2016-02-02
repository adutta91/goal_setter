# == Schema Information
#
# Table name: goal_comments
#
#  id         :integer          not null, primary key
#  goal_id    :integer          not null
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#

class GoalComment < ActiveRecord::Base
  validates :goal_id, :author_id, :body, presence: true

  belongs_to :goal
  belongs_to :author, class_name: "User"
end
