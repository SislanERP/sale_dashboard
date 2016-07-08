class TypeDocsController < ApplicationController
  before_action :set_type_doc, only: [:show, :edit, :update, :destroy]

  # GET /type_docs
  # GET /type_docs.json
  def index
    @type_docs = TypeDoc.all
  end

  # GET /type_docs/1
  # GET /type_docs/1.json
  def show
  end

  # GET /type_docs/new
  def new
    @type_doc = TypeDoc.new
  end

  # GET /type_docs/1/edit
  def edit
  end

  # POST /type_docs
  # POST /type_docs.json
  def create
    @type_doc = TypeDoc.new(type_doc_params)

    respond_to do |format|
      if @type_doc.save
        format.html { redirect_to @type_doc, notice: 'Type doc was successfully created.' }
        format.json { render :show, status: :created, location: @type_doc }
      else
        format.html { render :new }
        format.json { render json: @type_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_docs/1
  # PATCH/PUT /type_docs/1.json
  def update
    respond_to do |format|
      if @type_doc.update(type_doc_params)
        format.html { redirect_to @type_doc, notice: 'Type doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_doc }
      else
        format.html { render :edit }
        format.json { render json: @type_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_docs/1
  # DELETE /type_docs/1.json
  def destroy
    @type_doc.destroy
    respond_to do |format|
      format.html { redirect_to type_docs_url, notice: 'Type doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_doc
      @type_doc = TypeDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_doc_params
      params.require(:type_doc).permit(:cod_sii, :name, :positive)
    end
end
