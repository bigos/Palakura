class Spinach::Features::TestHowSpinachWorks < Spinach::FeatureSteps
  step 'I visit home page' do
    #pending 'step not implemented'
    Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)
    UserSession.create(:login => "testuser", :password => "test", :remember_me => true)
    visit '/'
  end

  step 'the I should see Welcome aboard' do
    ### needed this to solve missing table problem
    ### rake db:test:prepare
    #pending 'step not implemented'
    #p page.inspect
    page.body.should include('Welcome aboard')
  end
end
