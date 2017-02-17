class Blog < ApplicationRecord
  belongs_to :month_blog
  
  def blog_title
    "《" + self.title + "》"
  end
  
  def blog_time
    self.created_at.to_s[5..10]
  end
  
  def blog_content
    self.content
  end
  
  def blog_date
    self.created_at.to_s[0..10]
  end
end
