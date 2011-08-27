require 'test_helper'

class ClasseProdutoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClasseProduto.new.valid?
  end
end
