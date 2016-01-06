class Test < ActiveRecord::Base
	validates :path, length: {minimum: 5}
end
