class ItrVerificationReportsController < ApplicationController
  # GET /itr_verification_reports
  # GET /itr_verification_reports.json
  def index
     @search = ItrVerificationReport.search(params[:search])
     @itr_verification_report = @search.paginate(:per_page => 20, :page => params[:page])
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itr_verification_reports }
    end
  end

  # GET /itr_verification_reports/1
  # GET /itr_verification_reports/1.json
  def show
    @itr_verification_report = ItrVerificationReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itr_verification_report }
    end
  end

  # GET /itr_verification_reports/new
  # GET /itr_verification_reports/new.json
  def new
    @itr_verification_report = ItrVerificationReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @itr_verification_report }
    end
  end

  # GET /itr_verification_reports/1/edit
  def edit
    @itr_verification_report = ItrVerificationReport.find(params[:id])
  end

  # POST /itr_verification_reports
  # POST /itr_verification_reports.json
  def create
    @itr_verification_report = ItrVerificationReport.new(params[:itr_verification_report])

    respond_to do |format|
      if @itr_verification_report.save
        format.html { redirect_to @itr_verification_report, notice: 'Itr verification report was successfully created.' }
        format.json { render json: @itr_verification_report, status: :created, location: @itr_verification_report }
      else
        format.html { render action: "new" }
        format.json { render json: @itr_verification_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /itr_verification_reports/1
  # PUT /itr_verification_reports/1.json
  def update
    @itr_verification_report = ItrVerificationReport.find(params[:id])

    respond_to do |format|
      if @itr_verification_report.update_attributes(params[:itr_verification_report])
        format.html { redirect_to @itr_verification_report, notice: 'Itr verification report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @itr_verification_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itr_verification_reports/1
  # DELETE /itr_verification_reports/1.json
  def destroy
    @itr_verification_report = ItrVerificationReport.find(params[:id])
    @itr_verification_report.destroy

    respond_to do |format|
      format.html { redirect_to itr_verification_reports_url }
      format.json { head :no_content }
    end
  end
end
