class AddCommentIdToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :comment_id, :integer
  end
end
