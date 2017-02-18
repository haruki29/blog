class AddMonthBlogIdToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :month_blog_id, :integer
  end
end
