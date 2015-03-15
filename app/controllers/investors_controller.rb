class InvestorsController < ApplicationController
  before_action :set_investor, only: [:show, :edit, :update, :destroy]

  # GET /investors
  # GET /investors.json
  def index
    @post = Post.last
    @investors = Investor.all
  end

  # GET /investors/1
  # GET /investors/1.json
  def show
    @post = Post.last
  end

  # GET /investors/new
  def new
    @post = Post.last
    @investor = Investor.new
  end

  # GET /investors/1/edit
  def edit
    @post = Post.last
  end

  # POST /investors
  # POST /investors.json
  def create
    @post = Post.last
    @investor = Investor.create(investor_params)

    respond_to do |format|
      if @investor.save
        format.html { redirect_to @investor, notice: 'Investor was successfully created.' }
        format.json { render :show, status: :created, location: @investor }
      else
        format.html { render :new }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investors/1
  # PATCH/PUT /investors/1.json
  def update
    respond_to do |format|
      if @investor.update(investor_params)
        format.html { redirect_to @investor, notice: 'Investor was successfully updated.' }
        format.json { render :show, status: :ok, location: @investor }
      else
        format.html { render :edit }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investors/1
  # DELETE /investors/1.json
  def destroy
    @investor.destroy
    respond_to do |format|
      format.html { redirect_to investors_url, notice: 'Investor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor
      @investor = Investor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investor_params
      params[:investor].permit(:title, :body, :contact_info)
    end
end
