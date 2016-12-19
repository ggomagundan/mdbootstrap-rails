require 'test_helper'

class MdbootstrapRailsTest < ActionDispatch::IntegrationTest
   teardown { clean_sprockets_cache }

   test "engine is loaded" do
     assert_equal ::Rails::Engine, Mdbootstrap::Rails::Engine.superclass
   end

   private
   def clean_sprockets_cache
     FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
   end

end
