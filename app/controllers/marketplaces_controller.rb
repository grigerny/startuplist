class MarketplacesController < ApplicationController
  before_action :set_marketplace, only: [:show, :edit, :update, :destroy]

  # GET /marketplaces
  # GET /marketplaces.json
  def index
    @post = Post.last
    @marketplaces = Marketplace.all
  end

  # GET /marketplaces/1
  # GET /marketplaces/1.json
  def show
    @post = Post.last
  end

  # GET /marketplaces/new
  def new
    @post = Post.last
    @marketplace = Marketplace.new
  end

  # GET /marketplaces/1/edit
  def edit
    @post = Post.last
  end

  # POST /marketplaces
  # POST /marketplaces.json
  def create
    @post = Post.last
    @marketplace = Marketplace.create(marketplace_params)

    respond_to do |format|
      if @marketplace.save
        format.html { redirect_to @marketplace, notice: 'Marketplace was successfully created.' }
        format.json { render :show, status: :created, location: @marketplace }
      else
        format.html { render :new }
        format.json { render json: @marketplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketplaces/1
  # PATCH/PUT /marketplaces/1.json
  def update
    respond_to do |format|
      if @marketplace.update(marketplace_params)
        format.html { redirect_to @marketplace, notice: 'Marketplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketplace }
      else
        format.html { render :edit }
        format.json { render json: @marketplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketplaces/1
  # DELETE /marketplaces/1.json
  def destroy
    @marketplace.destroy
    respond_to do |format|
      format.html { redirect_to marketplaces_url, notice: 'Marketplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketplace
      @marketplace = Marketplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marketplace_params
      params[:marketplace].permit(:location, :title, :body, :image, :contact_info)
    end
end
