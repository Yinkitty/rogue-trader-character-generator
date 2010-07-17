require 'test_helper'

class LureOfTheVoidsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => LureOfTheVoid.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    LureOfTheVoid.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    LureOfTheVoid.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to lure_of_the_void_url(assigns(:lure_of_the_void))
  end
  
  def test_edit
    get :edit, :id => LureOfTheVoid.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    LureOfTheVoid.any_instance.stubs(:valid?).returns(false)
    put :update, :id => LureOfTheVoid.first
    assert_template 'edit'
  end
  
  def test_update_valid
    LureOfTheVoid.any_instance.stubs(:valid?).returns(true)
    put :update, :id => LureOfTheVoid.first
    assert_redirected_to lure_of_the_void_url(assigns(:lure_of_the_void))
  end
  
  def test_destroy
    lure_of_the_void = LureOfTheVoid.first
    delete :destroy, :id => lure_of_the_void
    assert_redirected_to lure_of_the_voids_url
    assert !LureOfTheVoid.exists?(lure_of_the_void.id)
  end
end
