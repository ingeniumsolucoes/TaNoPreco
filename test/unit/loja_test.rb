require 'test_helper'

class LojaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Loja.new.valid?
  end
end
