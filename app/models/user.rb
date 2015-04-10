class User < ActiveRecord::Base
	has_many :comments
	has_many :questions
  acts_as_voter

  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_attached_file :avatar, :styles => { :small => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_format_of :email, :without => TEMP_EMAIL_REGEX, on: :update


def self.from_omniauth(auth)
  User.first_or_create do |user|
    user.name = auth.extra.raw_info.name
    user.username = auth.info.nickname
    user.image = auth.info.image.sub("_mini", "")
  end
end

def self.new_with_session(params, session)
  if session["devise.user_attributes"]
    new(session["devise.user_attributes"], without_protection: true) do |user|
      user.attributes = params
      user.valid?
    end
  else
    super
  end
end

def password_required?
  super 
end

def update_with_password(params, *options)
  if encrypted_password.blank?
    update_attributes(params, *options)
  else
    super
  end
end
  

  end
