require 'digest/md5'

module PublicHelper
  
  def self.md5(pwd)
    return Digest::MD5.hexdigest(pwd)
  end
end