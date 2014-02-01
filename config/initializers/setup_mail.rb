ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 25,
    :domain               => 'anythingworks',
    :user_name            => "katemary.murphy",
    :password             => "nantucket1",
    :authentication       => :plain,
    :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost"