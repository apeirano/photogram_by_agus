class FriendRequest < ApplicationRecord
  # Direct associations

  has_many   :users,
             :foreign_key => "friends_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
