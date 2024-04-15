# Table name: views
#
# link_id    :bigint           not null
# user_agent :string
# ip         :string
# created_at :datetime         not null
# updated_at :datetime         not null
#
class View < ApplicationRecord
  belongs_to :link, counter_cache: true
end
