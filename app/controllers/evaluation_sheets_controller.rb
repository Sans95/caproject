class EvaluationSheetsController < ApplicationController
  # GET /evaluation_sheets
  # GET /evaluation_sheets.json
  def index
    @evaluation_sheets = EvaluationSheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluation_sheets }
    end
  end

  # GET /evaluation_sheets/1
  # GET /evaluation_sheets/1.json
  def show
    @evaluation_sheet = EvaluationSheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation_sheet }
    end
  end

  # GET /evaluation_sheets/new
  # GET /evaluation_sheets/new.json
  def new
    @evaluation_sheet = EvaluationSheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation_sheet }
    end
  end

  # GET /evaluation_sheets/1/edit
  def edit
    @evaluation_sheet = EvaluationSheet.find(params[:id])
  end

  # POST /evaluation_sheets
  # POST /evaluation_sheets.json
  def create
    @evaluation_sheet = EvaluationSheet.new(params[:evaluation_sheet])

    respond_to do |format|
      if @evaluation_sheet.save
        format.html { redirect_to @evaluation_sheet, notice: 'Evaluation sheet was successfully created.' }
        format.json { render json: @evaluation_sheet, status: :created, location: @evaluation_sheet }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluation_sheets/1
  # PUT /evaluation_sheets/1.json
  def update
    @evaluation_sheet = EvaluationSheet.find(params[:id])

    respond_to do |format|
      if @evaluation_sheet.update_attributes(params[:evaluation_sheet])
        format.html { redirect_to @evaluation_sheet, notice: 'Evaluation sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_sheets/1
  # DELETE /evaluation_sheets/1.json
  def destroy
    @evaluation_sheet = EvaluationSheet.find(params[:id])
    @evaluation_sheet.destroy

    respond_to do |format|
      format.html { redirect_to evaluation_sheets_url }
      format.json { head :no_content }
    end
  end
end
