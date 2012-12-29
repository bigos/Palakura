class Spinach::Features::TestHowSpinachWorks < Spinach::FeatureSteps
  step 'I visit home page' do
    #pending 'step not implemented'
    visit '/'
  end

  step 'the I should see Welcome aboard' do
    #pending 'step not implemented'
    Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)
    UserSession.create(:login => "testuser", :password => "test", :remember_me => true)

    page.body.should include('Welcome aboard')
  end
end
