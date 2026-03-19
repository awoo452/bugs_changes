class ChangeRequest < ApplicationRecord
  PRIORITIES = %w[low medium high urgent].freeze
  STATUSES = %w[new reviewing approved in_progress completed rejected].freeze

  validates :requester_name, :requester_email, :summary, :details, presence: true
  validates :priority, inclusion: { in: PRIORITIES }
  validates :status, inclusion: { in: STATUSES }
end
