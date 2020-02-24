class Tag < ApplicationRecord
    has_many :links , dependent: :destroy
end
