class AddBlogIdToMonthBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :month_blogs, :blog_id, :integer
  end
end
