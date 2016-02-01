# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  body             :text             not null
#  commentable_type :string           not null
#  commentable_id   :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
