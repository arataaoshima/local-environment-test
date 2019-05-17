class SubcontentsController < ApplicationController
  before_action :set_subcontent, only: [:show, :edit, :update, :destroy]

  # GET /subcontents
  # GET /subcontents.json
  def index
    @subcontents = Subcontent.all
  end

  # GET /subcontents/1
  # GET /subcontents/1.json
  def show
  end

  # GET /subcontents/new
  def new
    @subcontent = Subcontent.new
  end

  # GET /subcontents/1/edit
  def edit
  end

  # POST /subcontents
  # POST /subcontents.json
  def create
    @subcontent = Subcontent.new(subcontent_params)

      respond_to do |format|
      if @subcontent.save
        format.html { redirect_to "/posts/#{@subcontent.post_id}", notice: 'Subcontent was successfully created.' }
        #redirect_to "/posts/#{@subcontent.id}"
        format.json { render :show, status: :created, location: @subcontent }
      else

        format.html { render :new }
        format.json { render json: @subcontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcontents/1
  # PATCH/PUT /subcontents/1.json
  def update
    respond_to do |format|
      if @subcontent.update(subcontent_params)
        format.html { redirect_to @subconte, notice: 'Subcontent was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcontent }
      else
        format.html { render :edit }
        format.json { render json: @subcontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcontents/1
  # DELETE /subcontents/1.json
  def destroy
    @subcontent.destroy
    respond_to do |format|
      format.html { redirect_to subcontents_url, notice: 'Subcontent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcontent
      @subcontent = Subcontent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcontent_params
      params.require(:subcontent).permit(:tilte, :content, :content_type, :post_id, :content_order)
    end
end
