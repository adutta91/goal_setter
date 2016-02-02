# == Schema Information
#
# Table name: user_comments
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#

class UserComment < ActiveRecord::Base
  validates :user_id, :author_id, :body, presence: true

  belongs_to :user
  belongs_to :author, class_name: "User"
end
