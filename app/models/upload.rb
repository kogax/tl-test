class Upload < ActiveRecord::Base
  attr_accessible :filename, :url, :category_id
end
