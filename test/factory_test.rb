require "../lib/dryseason/dry_factory"
require "dummy"
require "test/unit"

class FactoryTest  < Test::Unit::TestCase


  def test_for_factory_instance
     dummyz = DryFactory.getServiceInstance "dummy"
      assert_instance_of Dummy , dummyz ,"wrong Instance!"

   end

end
