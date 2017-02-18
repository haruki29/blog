class Comment < ApplicationRecord
  belongs_to :news, :dependent => :destroy
end
