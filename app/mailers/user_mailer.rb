class UserMailer < ApplicationMailer

  default from: 'KLoong777@163.com'


  def received(user)
    @user= user 

    mail to: user.email, subject: 'welcome! '
  end

  def reset(user)
    @user= user 

    mail to: user.email, subject: 'please reset your password!'
  end

end
