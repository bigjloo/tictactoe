class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users_games
  has_many :games, :through => :users_games
  validates :email, presence: true
  validates :password, presence: true

  def self.authentication(email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
    @user = self.find_by_email(email)
    if @user
      if @user[:password] == password
        return @user
      end
    end
  end
end
