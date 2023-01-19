class Project < ApplicationRecord
  enum status: [:active, :inactive, :in_progress]
end
