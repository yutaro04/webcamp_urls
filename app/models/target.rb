class Target < ApplicationRecord
    has_many :target_links
    has_many :links, through: :target_links
end
