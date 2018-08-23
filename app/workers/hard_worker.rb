require 'sidekiq'

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379' }
end


class HardWorker
  include Sidekiq::Worker
  def perform(name, count)
    sleep(20)
  end
end