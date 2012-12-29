class Spinach::Features::TestHowSpinachWorks < Spinach::FeatureSteps
  step 'I visit home page' do
    #pending 'step not implemented'
    visit '/'
  end

  step 'the I should see Welcome aboard' do
    #pending 'step not implemented'
    page.body.should include('Welcome aboard')
  end
end
