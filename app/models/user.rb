class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :user_name, :gender

  # attr_accessible :title, :body

  has_many :debates
  has_many :comments

  validate :email, format: {with: /^\w*[a-zA-Z]\w*@[a-z]+.[a-z]+/, message: 'Enter a valid email.'}
  validate :first_name, :last_name, format: {with: /^[a-zA-Z]*/, message: 'Invalid name.'}
  validate :email, :user_name, uniqueness: true
  # validates :first_name, :last_name, :user_name, :gender, :password, :password_confirmation, :email, presence: true

  def full_name
    first_name + ' ' + last_name
  end

end
