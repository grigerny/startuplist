class AcceleratorsController < ApplicationController
  before_action :set_accelerator, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "grigerny", password: "6764", except: [:index, :show, :new, :create] 

  # GET /accelerators
  # GET /accelerators.json
  def index
    @accelerators = Accelerator.all
    @post = Post.last
  end

  # GET /accelerators/1
  # GET /accelerators/1.json
  def show
    @post = Post.last
  end

  # GET /accelerators/new
  def new
    @accelerator = Accelerator.new
    @post = Post.last
  end

  # GET /accelerators/1/edit
  def edit
    @post = Post.last
  end

  # POST /accelerators
  # POST /accelerators.json
  def create
    @post = Post.last
    @accelerator = Accelerator.create(accelerator_params)

    respond_to do |format|
      if @accelerator.save
        format.html { redirect_to @accelerator, notice: 'Accelerator was successfully created.' }
        format.json { render :show, status: :created, location: @accelerator }
      else
        format.html { render :new }
        format.json { render json: @accelerator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accelerators/1
  # PATCH/PUT /accelerators/1.json
  def update
    respond_to do |format|
      if @accelerator.update(accelerator_params)
        format.html { redirect_to @accelerator, notice: 'Accelerator was successfully updated.' }
        format.json { render :show, status: :ok, location: @accelerator }
      else
        format.html { render :edit }
        format.json { render json: @accelerator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accelerators/1
  # DELETE /accelerators/1.json
  def destroy
    @accelerator.destroy
    respond_to do |format|
      format.html { redirect_to accelerators_url, notice: 'Accelerator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accelerator
      @accelerator = Accelerator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accelerator_params
      params[:accelerator].permit(:title, :body, :location, :contact_info)
    end
end
