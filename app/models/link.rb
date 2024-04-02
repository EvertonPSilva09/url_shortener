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
  validates :url, presence: true
end
