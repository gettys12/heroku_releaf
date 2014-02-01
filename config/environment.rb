# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Releaf::Application.initialize!

ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 25,
    :domain               => 'anythingworks',
    :user_name            => "katemary.murphy",
    :password             => "nantucket1",
    :authentication       => :plain,
    :enable_starttls_auto => true
}
