class ChangeCommentToBookmarks < ActiveRecord::Migration[7.0]
  def change
    change_column(:bookmarks, :comment, :text, presence: true, length: { minimum: 6 })
  end
end
