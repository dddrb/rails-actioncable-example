require ::File.expand_path('../../environment',  __FILE__)
Rails.application.eager_load!

require "action_cable/process/logging"

run ActionCable.server
