class CreateMonthBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :month_blogs do |t|
      t.string :title

      t.timestamps
    end
  end
end
