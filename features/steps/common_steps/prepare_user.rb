# within a rails app, you might want to use ActiveSupport::Concern
module CommonSteps
  module PrepareUser
    extend ActiveSupport::Concern

    included do
      Given 'I have test user in the database' do
        if User.find(:first, :conditions => "login = 'testuser'").blank?
          u=User.new(login=>'testuser', password=>'test', password_confirmation=>'test')
          u.save
        end
      end
    end
  end
end
