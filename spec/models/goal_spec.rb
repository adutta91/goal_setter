# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  private     :boolean          default(FALSE), not null
#  description :text             not null
#  user_id     :integer          not null
#  completed   :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Goal, type: :model do

  

end
