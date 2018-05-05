class Area < ApplicationRecord
    has_many :routes, :dependent => :restrict_with_error
    accepts_nested_attributes_for :routes, allow_destroy: true
end
