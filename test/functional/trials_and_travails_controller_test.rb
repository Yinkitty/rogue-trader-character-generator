require 'test_helper'

class TrialsAndTravailsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TrialsAndTravails.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TrialsAndTravails.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TrialsAndTravails.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to trials_and_travails_url(assigns(:trials_and_travails))
  end
  
  def test_edit
    get :edit, :id => TrialsAndTravails.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TrialsAndTravails.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TrialsAndTravails.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TrialsAndTravails.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TrialsAndTravails.first
    assert_redirected_to trials_and_travails_url(assigns(:trials_and_travails))
  end
  
  def test_destroy
    trials_and_travails = TrialsAndTravails.first
    delete :destroy, :id => trials_and_travails
    assert_redirected_to trials_and_travails_url
    assert !TrialsAndTravails.exists?(trials_and_travails.id)
  end
end
