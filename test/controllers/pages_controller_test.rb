require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get pag1" do
    get :pag1
    assert_response :success
  end

  test "should get pag2" do
    get :pag2
    assert_response :success
  end

  test "should get pag3" do
    get :pag3
    assert_response :success
  end

  def create
  @post = Post.new(params[:post])

  respond_to do |format|
    if @post.save
      format.html  { redirect_to(@post,
                    :notice => 'Post was successfully created.') }
      format.json  { render :json => @post,
                    :status => :created, :location => @post }
    else
      format.html  { render :action => "new" }
      format.json  { render :json => @post.errors,
                    :status => :unprocessable_entity }
    end
  end
end

end
