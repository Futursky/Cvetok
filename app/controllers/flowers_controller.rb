class FlowersController < ApplicationController
  before_action :set_flower, only: [:show, :edit, :update, :destroy]
  before_filter :load_category

  # GET /flowers
  # GET /flowers.json
  def index
    @flowers = @category.flowers.all
  end

  # GET /flowers/1
  # GET /flowers/1.json
  def show
  end

  # GET /flowers/new
  def new
    @flower = @category.flowers.new
  end

  # GET /flowers/1/edit
  def edit
  end

  # POST /flowers
  # POST /flowers.json
  def create
    @flower = @category.flowers.new(flower_params)

    respond_to do |format|
      if @flower.save
        format.html { redirect_to [@category, @flower], notice: 'Flower was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flower }
      else
        format.html { render action: 'new' }
        format.json { render json: @flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowers/1
  # PATCH/PUT /flowers/1.json
  def update
    respond_to do |format|
      if @flower.update(flower_params)
        format.html { redirect_to [@category, @flower], notice: 'Flower was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowers/1
  # DELETE /flowers/1.json
  def destroy
    @flower = @category.flowers.find(params[:id])
    @flower.destroy
    respond_to do |format|
      format.html { redirect_to category_flowers_url(@category)}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower
      @flower = Flower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_params
      params.require(:flower).permit(:name, :description, :price, :category_id)
    end

    def load_category
      @category = Category.find(params[:category_id])
    end
end
