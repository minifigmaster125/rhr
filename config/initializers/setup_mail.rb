ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  #:domain               => "rhr.herokuapp.com",
  :user_name            => "rhr4422@gmail.com",
  :password             => "h0l0RAMS",
  :authentication       => "plain",
  :enable_starttls_auto => true
}


