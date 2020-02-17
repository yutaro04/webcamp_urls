class Link < ApplicationRecord
    belongs_to :tag
    has_many :target_links
    has_many :targets, through: :target_links
end
