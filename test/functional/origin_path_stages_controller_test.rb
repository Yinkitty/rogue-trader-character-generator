require 'test_helper'

class OriginPathStagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => OriginPathStage.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    OriginPathStage.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    OriginPathStage.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to origin_path_stage_url(assigns(:origin_path_stage))
  end
  
  def test_edit
    get :edit, :id => OriginPathStage.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    OriginPathStage.any_instance.stubs(:valid?).returns(false)
    put :update, :id => OriginPathStage.first
    assert_template 'edit'
  end
  
  def test_update_valid
    OriginPathStage.any_instance.stubs(:valid?).returns(true)
    put :update, :id => OriginPathStage.first
    assert_redirected_to origin_path_stage_url(assigns(:origin_path_stage))
  end
  
  def test_destroy
    origin_path_stage = OriginPathStage.first
    delete :destroy, :id => origin_path_stage
    assert_redirected_to origin_path_stages_url
    assert !OriginPathStage.exists?(origin_path_stage.id)
  end
end
