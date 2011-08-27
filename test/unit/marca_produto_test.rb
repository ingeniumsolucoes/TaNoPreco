require 'test_helper'

class MarcaProdutoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MarcaProduto.new.valid?
  end
end
