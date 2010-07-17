require 'test_helper'

class MotivationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Motivation.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Motivation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Motivation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to motivation_url(assigns(:motivation))
  end
  
  def test_edit
    get :edit, :id => Motivation.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Motivation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Motivation.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Motivation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Motivation.first
    assert_redirected_to motivation_url(assigns(:motivation))
  end
  
  def test_destroy
    motivation = Motivation.first
    delete :destroy, :id => motivation
    assert_redirected_to motivations_url
    assert !Motivation.exists?(motivation.id)
  end
end
