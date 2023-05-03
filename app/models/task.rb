class Task < ApplicationRecord
  belongs_to :category, optional: true

  enum status: [:PENDING, :IN_PROGRESS, :COMPLETED, :FAILED]
end
