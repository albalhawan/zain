class User < ActiveRecord::Base
  #to ensure that the user is present and uniq -  the length to ensure that the number of the letters are at least Ex: 2 or 3 or 4
  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\.-]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

end
