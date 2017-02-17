class Blog < ApplicationRecord
  
  def blog_title
    "《" + self.title + "》"
  end
  
  def blog_time
    self.created_at.to_s[5..10]
  end
  
  def blog_content
    
  end
end
