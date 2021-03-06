class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, 
         omniauth_providers: [:facebook]
  has_many :questions, dependent: :destroy
  has_many :authorizations, dependent: :destroy
  has_many :answers, dependent: :destroy

  def author_of?(object)
    id == object.user_id
  end

  def self.find_for_oauth(auth)
    authorization = Authorization.where(provider: auth.provider,
        uid: auth.uid).first
    return authorization.user if authorization

    email = auth.info[:email]
    user = User.where(email: email).first
    unless user
      password = Devise.friendly_token(20)
      user = User.create!(email: email, password: password, password_confirmation: password)
    end

    user.authorizations.create!(provider: auth.provider, uid: auth.uid)
    user
  end
end
