class User < ActiveRecord::Base

  attr_reader :password

  validates :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  after_initialize :ensure_session_token
  before_validation :ensure_session_token_uniqueness

  has_many :boards, dependent: :destroy, inverse_of: :user
	has_many :pins, dependent: :destroy, inverse_of: :user

  has_many :in_follows, class_name: "Follow", foreign_key: "followee_id"
	has_many :out_follows, class_name: "Follow", foreign_key: "follower_id"
	has_many :followers, through: :in_follows, source: :follower
	has_many :followees, through: :out_follows, source: :followee

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil unless user && user.password_is?(password)
    user
  end

  # change the name to differentiate between BCrypt's is_password?
  def password_is?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = new_session_token
    ensure_session_token_uniqueness
    self.save!
    self.session_token
  end

  private

  def new_session_token
    SecureRandom.urlsafe_base64
  end

  def ensure_session_token
    self.session_token ||= new_session_token
  end

  def ensure_session_token_uniqueness
		while User.find_by(session_token: self.session_token)
			self.session_token = new_session_token
		end
	end

  def follows?(user)
    out_follows.exists?(followee_id: user.id)
  end

end
