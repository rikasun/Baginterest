# == Schema Information
#
# Table name: pins
#
#  id          :bigint(8)        not null, primary key
#  author_id   :integer          not null
#  description :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Pin < ApplicationRecord
  validates :author_id, presence: true

  belongs_to :user,
  foreign_key: :author_id,
  class_name: :users
  
end
