# == Schema Information
#
# Table name: scores
#
#  id          :integer          not null, primary key
#  team        :string
#  blairScore  :integer
#  peddieScore :integer
#  active      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Score < ActiveRecord::Base

  # Score validations
  validates :blairScore, presence: true
  validates :peddieScore, presence: true
  validates :team, presence: true

end
