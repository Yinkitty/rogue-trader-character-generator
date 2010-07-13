require 'test_helper'

class OriginPathsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => OriginPath.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    OriginPath.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    OriginPath.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to origin_path_url(assigns(:origin_path))
  end
  
  def test_edit
    get :edit, :id => OriginPath.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    OriginPath.any_instance.stubs(:valid?).returns(false)
    put :update, :id => OriginPath.first
    assert_template 'edit'
  end
  
  def test_update_valid
    OriginPath.any_instance.stubs(:valid?).returns(true)
    put :update, :id => OriginPath.first
    assert_redirected_to origin_path_url(assigns(:origin_path))
  end
  
  def test_destroy
    origin_path = OriginPath.first
    delete :destroy, :id => origin_path
    assert_redirected_to origin_paths_url
    assert !OriginPath.exists?(origin_path.id)
  end
end
