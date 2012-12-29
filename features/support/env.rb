require 'spinach-rails'
require 'rspec'

ENV['RAILS_ENV']='test'
require_relative '../../config/environment'

common_steps = Dir.glob(Rails.root.join("features/steps/common_steps/**/*.rb"))
common_steps.each do |f|
  require f
end
