class Place < ApplicationRecord
  belongs_to :task, optional: true
end
