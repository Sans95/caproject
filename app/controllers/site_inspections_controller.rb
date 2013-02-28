class SiteInspectionsController < ApplicationController
  # GET /site_inspections
  # GET /site_inspections.json
  def index
     @search = SiteInspection.search(params[:search])
     @site_inspection = @search.paginate(:per_page => 20, :page => params[:page])
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_inspections }
    end
  end

  # GET /site_inspections/1
  # GET /site_inspections/1.json
  def show
    @site_inspection = SiteInspection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_inspection }
    end
  end

  # GET /site_inspections/new
  # GET /site_inspections/new.json
  def new
    @site_inspection = SiteInspection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_inspection }
    end
  end

  # GET /site_inspections/1/edit
  def edit
    @site_inspection = SiteInspection.find(params[:id])
  end

  # POST /site_inspections
  # POST /site_inspections.json
  def create
    @site_inspection = SiteInspection.new(params[:site_inspection])

    respond_to do |format|
      if @site_inspection.save
        format.html { redirect_to @site_inspection, notice: 'Site inspection was successfully created.' }
        format.json { render json: @site_inspection, status: :created, location: @site_inspection }
      else
        format.html { render action: "new" }
        format.json { render json: @site_inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /site_inspections/1
  # PUT /site_inspections/1.json
  def update
    @site_inspection = SiteInspection.find(params[:id])

    respond_to do |format|
      if @site_inspection.update_attributes(params[:site_inspection])
        format.html { redirect_to @site_inspection, notice: 'Site inspection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_inspections/1
  # DELETE /site_inspections/1.json
  def destroy
    @site_inspection = SiteInspection.find(params[:id])
    @site_inspection.destroy

    respond_to do |format|
      format.html { redirect_to site_inspections_url }
      format.json { head :no_content }
    end
  end
end
