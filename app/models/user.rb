class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :units

  def send_mail(params)
    UserMailer.hoa_email(params).deliver
    flast[:notice] = 'An email has been sent to the HOA board. You should receive a response shortly.'
    redirect_to :root
  end
end
