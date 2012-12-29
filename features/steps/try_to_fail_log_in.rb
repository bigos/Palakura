class Spinach::Features::TryToFailLogIn < Spinach::FeatureSteps
  step 'I have test user in the database' do
    if User.find(:first, :conditions => "login = 'testuser'").blank?
      u=User.new(login=>'testuser', password=>'test', password_confirmation=>'test')
      u.save
    end
  end

  step 'I visit login page' do
    visit 'http://localhost:3000/login'
  end

  step 'I enter correct login and incorrect password' do
    fill_in 'Login', :with => 'testuser'
    fill_in 'Password', :with => 'error'
  end

  step 'I click Login button' do
    click_button('Login')
  end

  step 'page should contain Password is not valid' do
    page.body.should include('Password is not valid')
  end

  step 'I do not enter login' do
    fill_in 'Login', :with => ''
    fill_in 'Password', :with => 'error'
  end

  step 'page should contain Login cannot be blank' do
    page.body.should include('Login cannot be blank')
  end

  step 'I do not enter password' do
    fill_in 'Login', :with => 'testuser'
    fill_in 'Password', :with => ''
  end

  step 'page should contain Password cannot be blank' do
    page.body.should include('Password cannot be blank')
  end
end
