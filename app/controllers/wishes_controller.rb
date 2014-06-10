class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]
  before_action :set_category
  before_action :set_breadcrumbs
  # GET /wishes
  # GET /wishes.json
  

  def index
    redirect_to @category
  end

  # GET /wishes/1
  # GET /wishes/1.json
  def show
    add_breadcrumb @wish.title, :category_wish_path
    @step = Step.new
    @steps = @wish.steps
  end

  # GET /wishes/new
  def new
    add_breadcrumb "New"
    @wish = Wish.new
  end

  # GET /wishes/1/edit
  def edit
    add_breadcrumb @wish.title, :category_wish_path
    add_breadcrumb "Edit"
  end

  # POST /wishes
  # POST /wishes.json
  def create
    @wish = @category.wishes.build(wish_params)
    
    respond_to do |format|
      if @wish.save
        format.html { redirect_to @category, notice: 'Wish was successfully created.' }
        format.json { render :show, status: :created, location: @wish }
      else
        format.html { render :new }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishes/1
  # PATCH/PUT /wishes/1.json
  def update
    respond_to do |format|
      if @wish.update(wish_params)
        format.html { redirect_to [@category, @wish], notice: 'Wish was successfully updated.' }
        format.json { render :show, status: :ok, location: [@category, @wish] }
      else
        format.html { render :edit }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishes/1
  # DELETE /wishes/1.json
  def destroy
    @wish.destroy
    respond_to do |format|
      format.html { redirect_to @category, notice: 'Wish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish
      @wish = Wish.find(params[:id])
    end
    def set_category
      @category = Category.find(params[:category_id])
      
    end

    def set_breadcrumbs
      add_breadcrumb t("home"), :root_path
      add_breadcrumb @category.title, @category
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wish_params
      params.require(:wish).permit(:title, :start, :finish, :body, :category_id, :image, :remote_image_url)
    end
end
