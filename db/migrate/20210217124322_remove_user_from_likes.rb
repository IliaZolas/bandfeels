class RemoveUserFromLikes < ActiveRecord::Migration[6.0]
  def change
    # remove_reference :likes, :user, null: false, foreign_key: true
  end
end
