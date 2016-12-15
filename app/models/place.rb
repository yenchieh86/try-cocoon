class Place < ApplicationRecord
    has_many :adresses, dependent: :destroy
end
