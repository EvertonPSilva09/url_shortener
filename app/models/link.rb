# Table name: links
#
#  id          :bigint           not null, primary key
#  url         :string
#  title       :string
#  description :string
#  image       :string
#  views_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Link < ApplicationRecord
  has_many :views, dependent: :destroy
  scope :recent_first, -> { order(created_at: :desc) }

  validates :url, presence: true

  def self.find(id)
    super ShortCode.decode(id)
  end

  def to_param
    ShortCode.encode(id)
  end
end
