
require File.join(File.dirname(__FILE__), 'base.rb')

class GetPutTest < Test::Unit::TestCase

  def setup
    $pid ||= start_glaive
    sleep 0.077
    @con = connect
  end

  def teardown
    begin
      @con.close
    rescue
    ensure
      @con = nil
    end
  end

  def test_get
    @con.puts("nada")
  end
end
