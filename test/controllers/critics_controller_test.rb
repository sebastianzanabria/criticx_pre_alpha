require 'test_helper'

class CriticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @critic = critics(:one)
  end

  test "should get index" do
    get critics_url
    assert_response :success
  end

  test "should get new" do
    get new_critic_url
    assert_response :success
  end

  test "should create critic" do
    assert_difference('Critic.count') do
      post critics_url, params: { critic: { body: @critic.body, game_id: @critic.game_id, title: @critic.title, username: @critic.username } }
    end

    assert_redirected_to critic_url(Critic.last)
  end

  test "should show critic" do
    get critic_url(@critic)
    assert_response :success
  end

  test "should get edit" do
    get edit_critic_url(@critic)
    assert_response :success
  end

  test "should update critic" do
    patch critic_url(@critic), params: { critic: { body: @critic.body, game_id: @critic.game_id, title: @critic.title, username: @critic.username } }
    assert_redirected_to critic_url(@critic)
  end

  test "should destroy critic" do
    assert_difference('Critic.count', -1) do
      delete critic_url(@critic)
    end

    assert_redirected_to critics_url
  end
end
