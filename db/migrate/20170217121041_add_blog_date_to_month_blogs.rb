class AddBlogDateToMonthBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :month_blogs, :blog_date, :string
  end
end
