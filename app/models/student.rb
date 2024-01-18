class Student < ApplicationRecord
    #for scope model
#   default_scope -> { where(active: true) }

scope :published, -> { where(published: true) }

# Scope to fetch unpublished posts
scope :unpublished, -> { where(published: false) }

# Scope to fetch recent posts
scope :recent, -> { order(created_at: :desc).limit(5) }

end
