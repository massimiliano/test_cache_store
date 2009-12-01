if RAILS_ENV == "test"
  gem 'test-unit'
  require 'test_help'
  require 'test_cache_store'
  require 'action_controller/integration'
  
  ActionController::Base.perform_caching = true
  ActionController::Base.cache_store = TestCacheStore.new
end

