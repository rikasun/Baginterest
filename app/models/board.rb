# == Schema Information
#
# Table name: boards
#
#  id         :bigint(8)        not null, primary key
#  board_name :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#

class Board < ApplicationRecord
  validates :board_name, :author_id, presence: true

  belongs_to :user,
    foreign_key: :author_id,
    class_name: :User

  has_many :pinboards,
    foreign_key: :board_id,
    class_name: :Pinboard

  has_many :pins,
    through: :pinboards,
    source: :pin
end
