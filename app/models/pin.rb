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
  has_one_attached :photo

  def ensure_photo
    unless self.photo.attached?
      errors[:photo] << "must be attached"
    end
  end

  validates :author_id, presence: true

  belongs_to :user,
  foreign_key: :author_id,
  class_name: :User

  has_many :pinboards,
    foreign_key: :pin_id,
    class_name: :Pinboard

  has_many :boards,
    through: :pinboards,
    source: :board
end
