class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :link, :user_id, presence: true
  validate :valid_link

  private
  	def valid_link
  		unless link.include? "http://"
  			errors.add(:message, "Must include \"http://\"")
  		end
  	end

end
