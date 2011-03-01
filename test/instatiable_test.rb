require "../lib/dryseason/dry_factory"
require "dummy"
require "dummyest"
require "test/unit"


class InstatiableTest < Test::Unit::TestCase



  def test_out_box
        d = Dummyest.new
        d.dummy_service.print_dummy_stuff()
  end

  def test_for_errors
      d = Dummyest.new
      v_missing = false
      v_service = false
      begin
        d.amissingmethod
      rescue
         v_missing = true
      end
      assert(v_missing,'No exception raised!')

      begin
        d.missing_service
       rescue
         v_service = true
      end
       assert(v_service,'No exception raised!')

  end


end