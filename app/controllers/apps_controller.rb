class AppsController < ApplicationController
  before_action :set_app, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "grigerny", password: "6764", except: [:index, :show, :new, :create] 

  # GET /apps
  # GET /apps.json
  def index
    @post = Post.last
    @apps = App.all
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
    @post = Post.last
  end

  # GET /apps/new
  def new
    @post = Post.last
    @app = App.new
  end

  # GET /apps/1/edit
  @post = Post.last
  def edit
  end

  # POST /apps
  # POST /apps.json
  def create
    @post = Post.last
    @app = App.create(app_params)

    respond_to do |format|
      if @app.save
        format.html { redirect_to @app, notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    @post = Post.last
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to @app, notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params[:app].permit(:title, :body, :link, :tagline, :user_id)
    end
end
