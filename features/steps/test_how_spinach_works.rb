class Spinach::Features::TestHowSpinachWorks < Spinach::FeatureSteps
  step 'I visit home page' do
    #you need session code below if you don't have the user in the database
    #Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)
    #UserSession.create(:login => "testuser", :password => "test", :remember_me => true)
    visit 'http://localhost:3000/'
  end

  step 'the I should see Welcome aboard' do
    ### needed this to solve missing table problem
    ### rake db:test:prepare
    #pending 'step not implemented'
    #p page.body
    page.body.should include('Welcome aboard')
  end
end
