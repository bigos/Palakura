class Spinach::Features::TryToLogIn < Spinach::FeatureSteps
  include CommonSteps::PrepareUser

  # including code from Common Steps you don't need the code below
  # step 'I have test user in the database' do
  #   if User.find(:first, :conditions => "login = 'testuser'").blank?
  #     u=User.new(login=>'testuser', password=>'test', password_confirmation=>'test')
  #     u.save
  #   end
  # end

  step 'I visit login page' do
    visit 'http://localhost:3000/login'
  end

  step 'I enter correct login and password' do
    #if you don't have the user in the databse you need to create a User object instance

    fill_in 'Login', :with => 'testuser'
    fill_in 'Password', :with => 'test'
    #puts page.body
  end

  step 'I click Login button' do
    click_button('Login')
  end

  step 'page should contain Current login ip' do
    #puts page.body
    page.body.should include('Current login ip')
  end
end
