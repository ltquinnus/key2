class KeysController < ApplicationController
  before_action :set_key, only: [:show, :edit, :update, :destroy]

  # GET /keys
  # GET /keys.json
   def index
    keys = Key.all
     @q = Key.search(params[:q]) 
     @keys = @q.result.page(params[:page]).per(15)
     @totNumber = keys.count
      @searchNumber = @q.result.count  
  
   @grouped_options = ForSelect.GroupedSelect('1','key',  ForSelect)
        
      respond_to do |format|
      format.html { render action: 'index' }
      format.js {}
    end
 end
 
  # GET /keys/1
  # GET /keys/1.json
  def show
  end

  # GET /keys/new
  def new
    @key = Key.new
    @grouped_options = ForSelect.GroupedSelect('1','key',  ForSelect)
  respond_to do |format|
      format.html { render action: 'new' }
      format.js { render "new_edit" }
  end
   end

  # GET /keys/1/edit
  def edit
   @grouped_options = ForSelect.GroupedSelect('1','key',  ForSelect)
    respond_to do |format|
      format.html { render action: 'edit' }
      format.js { render "new_edit" }
    end
 end

  # POST /keys
  # POST /keys.json
  def create
    @key = Key.new(key_params)

    respond_to do |format|
      if @key.save
      format.html { redirect_to @key, notice: 'Key was successfully created.' }
      format.js {render "update_create"}
      format.json { render action: 'show', status: :created, location: @key }
      else
        format.html { render action: 'new' }
        format.json { render json: @key.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keys/1
  # PATCH/PUT /keys/1.json
  def update
    respond_to do |format|
      if @key.update(key_params)
         @q = Key.search(params[:q])
          @keys = @q.result.page(params[:page]).per(15)
         format.html { redirect_to @key, notice: 'Key was successfully updated.' }
         format.js { render "update_create" }
         format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keys/1
  # DELETE /keys/1.json
  def destroy
    @key.destroy
    respond_to do |format|
      format.html { redirect_to keys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key
      @key = Key.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_params
      params.require(:key).permit(:Company, :Description, :Number, :Checkout, :Checkin)
    end
end
