class ResidenceVerificationReportsController < ApplicationController
  # GET /residence_verification_reports
  # GET /residence_verification_reports.json
  def index
    @residence_verification_reports = ResidenceVerificationReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @residence_verification_reports }
    end
  end

  # GET /residence_verification_reports/1
  # GET /residence_verification_reports/1.json
  def show
    @residence_verification_report = ResidenceVerificationReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @residence_verification_report }
    end
  end

  # GET /residence_verification_reports/new
  # GET /residence_verification_reports/new.json
  def new
    @residence_verification_report = ResidenceVerificationReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @residence_verification_report }
    end
  end

  # GET /residence_verification_reports/1/edit
  def edit
    @residence_verification_report = ResidenceVerificationReport.find(params[:id])
  end

  # POST /residence_verification_reports
  # POST /residence_verification_reports.json
  def create
    @residence_verification_report = ResidenceVerificationReport.new(params[:residence_verification_report])

    respond_to do |format|
      if @residence_verification_report.save
        format.html { redirect_to @residence_verification_report, notice: 'Residence verification report was successfully created.' }
        format.json { render json: @residence_verification_report, status: :created, location: @residence_verification_report }
      else
        format.html { render action: "new" }
        format.json { render json: @residence_verification_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /residence_verification_reports/1
  # PUT /residence_verification_reports/1.json
  def update
    @residence_verification_report = ResidenceVerificationReport.find(params[:id])

    respond_to do |format|
      if @residence_verification_report.update_attributes(params[:residence_verification_report])
        format.html { redirect_to @residence_verification_report, notice: 'Residence verification report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @residence_verification_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residence_verification_reports/1
  # DELETE /residence_verification_reports/1.json
  def destroy
    @residence_verification_report = ResidenceVerificationReport.find(params[:id])
    @residence_verification_report.destroy

    respond_to do |format|
      format.html { redirect_to residence_verification_reports_url }
      format.json { head :no_content }
    end
  end
end
