class Spinach::Features::TryToLogIn < Spinach::FeatureSteps
  step 'I visit login page' do
    visit 'http://localhost:3000/login'
  end

  step 'I enter correct login and password' do
    pending 'step not implemented'
  end

  step 'I click Login button' do
    pending 'step not implemented'
  end

  step 'page should contain Current login ip' do
    pending 'step not implemented'
  end
end
