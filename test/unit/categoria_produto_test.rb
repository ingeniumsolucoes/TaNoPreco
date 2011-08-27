require 'test_helper'

class CategoriaProdutoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CategoriaProduto.new.valid?
  end
end
