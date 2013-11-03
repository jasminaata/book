ActionMailer::Base.smtp_settings = {
  :address              => "smtp.mandrillapp.com",
  :port                 => 587,
  :domain               => "asciicasts.com",
  :user_name            => "bufordtaylor+book@gmail.com",
  :password             => "ORrf4coLlOma7YBNDBE3DA",
  :authentication       => "plain",
  :enable_starttls_auto => true
}