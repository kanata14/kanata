class Like < ApplicationRecord
  belongs_to :manga
  belongs_to :user
  validates_uniqueness_of :manga_id, scope: :user_id
end
