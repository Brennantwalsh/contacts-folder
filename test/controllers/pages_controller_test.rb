require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def one
    @recipe = Recipe.find(2)
end
