class BusinessVerificationReportsController < ApplicationController
  # GET /business_verification_reports
  # GET /business_verification_reports.json
  def index
   @search =  BusinessVerificationReport.search(params[:search])
    @business_verification_report = @search.paginate(:per_page => 20, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_verification_reports }
    end
  end

  # GET /business_verification_reports/1
  # GET /business_verification_reports/1.json
  def show
    @business_verification_report = BusinessVerificationReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_verification_report }
    end
  end

  # GET /business_verification_reports/new
  # GET /business_verification_reports/new.json
  def new
    @business_verification_report = BusinessVerificationReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_verification_report }
    end
  end

  # GET /business_verification_reports/1/edit
  def edit
    @business_verification_report = BusinessVerificationReport.find(params[:id])
  end

  # POST /business_verification_reports
  # POST /business_verification_reports.json
  def create
    @business_verification_report = BusinessVerificationReport.new(params[:business_verification_report])

    respond_to do |format|
      if @business_verification_report.save
        format.html { redirect_to @business_verification_report, notice: 'Business verification report was successfully created.' }
        format.json { render json: @business_verification_report, status: :created, location: @business_verification_report }
      else
        format.html { render action: "new" }
        format.json { render json: @business_verification_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_verification_reports/1
  # PUT /business_verification_reports/1.json
  def update
    @business_verification_report = BusinessVerificationReport.find(params[:id])

    respond_to do |format|
      if @business_verification_report.update_attributes(params[:business_verification_report])
        format.html { redirect_to @business_verification_report, notice: 'Business verification report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_verification_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_verification_reports/1
  # DELETE /business_verification_reports/1.json
  def destroy
    @business_verification_report = BusinessVerificationReport.find(params[:id])
    @business_verification_report.destroy

    respond_to do |format|
      format.html { redirect_to business_verification_reports_url }
      format.json { head :no_content }
    end
  end
end
