class UserMailer < ApplicationMailer
  # default from: 'notifications@communityunity.org'

  def welcome_email(user)
     @user = params[:user]
     mail(to: @user.email, subject: 'Welcome to Flatiron Champions!')
  end

  # def invitation_email(challenger, opponent)
  #    @challenger = challenger
  #    @opponent = opponent
  #    mail(to: @opponent.email, subject: "New Flatiron Champions Challenge!")
  # end
end
