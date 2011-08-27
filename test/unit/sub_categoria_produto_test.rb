require 'test_helper'

class SubCategoriaProdutoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SubCategoriaProduto.new.valid?
  end
end
