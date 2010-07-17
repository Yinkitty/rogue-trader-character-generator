require 'test_helper'

class BirthrightsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Birthright.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Birthright.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Birthright.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to birthright_url(assigns(:birthright))
  end
  
  def test_edit
    get :edit, :id => Birthright.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Birthright.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Birthright.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Birthright.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Birthright.first
    assert_redirected_to birthright_url(assigns(:birthright))
  end
  
  def test_destroy
    birthright = Birthright.first
    delete :destroy, :id => birthright
    assert_redirected_to birthrights_url
    assert !Birthright.exists?(birthright.id)
  end
end
