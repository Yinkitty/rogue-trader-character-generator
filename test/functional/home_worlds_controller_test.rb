require 'test_helper'

class HomeWorldsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => HomeWorld.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    HomeWorld.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    HomeWorld.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to home_world_url(assigns(:home_world))
  end
  
  def test_edit
    get :edit, :id => HomeWorld.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    HomeWorld.any_instance.stubs(:valid?).returns(false)
    put :update, :id => HomeWorld.first
    assert_template 'edit'
  end
  
  def test_update_valid
    HomeWorld.any_instance.stubs(:valid?).returns(true)
    put :update, :id => HomeWorld.first
    assert_redirected_to home_world_url(assigns(:home_world))
  end
  
  def test_destroy
    home_world = HomeWorld.first
    delete :destroy, :id => home_world
    assert_redirected_to home_worlds_url
    assert !HomeWorld.exists?(home_world.id)
  end
end
