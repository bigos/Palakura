class Spinach::Features::TestHowUsWorks < Spinach::FeatureSteps
  step 'I visit us page' do
    #pending 'step not implemented'
    Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)
    #UserSession.create(:login => "testuser", :password => "test", :remember_me => true)
    visit account_path
  end

  step 'the I should see something' do
    #puts page.body
    page.body.should include('Login')
  end
end
