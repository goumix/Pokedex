class Pokemon < ApplicationRecord
  belongs_to :dresser, optional: true
end
