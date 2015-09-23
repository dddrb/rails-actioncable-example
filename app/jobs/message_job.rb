class MessageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ActionCable.server.broadcast 'messages', message: args[0]
  end
end
