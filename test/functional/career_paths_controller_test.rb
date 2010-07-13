require 'test_helper'

class CareerPathsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CareerPath.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CareerPath.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CareerPath.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to career_path_url(assigns(:career_path))
  end
  
  def test_edit
    get :edit, :id => CareerPath.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CareerPath.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CareerPath.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CareerPath.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CareerPath.first
    assert_redirected_to career_path_url(assigns(:career_path))
  end
  
  def test_destroy
    career_path = CareerPath.first
    delete :destroy, :id => career_path
    assert_redirected_to career_paths_url
    assert !CareerPath.exists?(career_path.id)
  end
end
