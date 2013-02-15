class TelephoneVerificationsController < ApplicationController
  # GET /telephone_verifications
  # GET /telephone_verifications.json
  def index
    @telephone_verifications = TelephoneVerification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @telephone_verifications }
    end
  end

  # GET /telephone_verifications/1
  # GET /telephone_verifications/1.json
  def show
    @telephone_verification = TelephoneVerification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @telephone_verification }
    end
  end

  # GET /telephone_verifications/new
  # GET /telephone_verifications/new.json
  def new
    @telephone_verification = TelephoneVerification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @telephone_verification }
    end
  end

  # GET /telephone_verifications/1/edit
  def edit
    @telephone_verification = TelephoneVerification.find(params[:id])
  end

  # POST /telephone_verifications
  # POST /telephone_verifications.json
  def create
    @telephone_verification = TelephoneVerification.new(params[:telephone_verification])

    respond_to do |format|
      if @telephone_verification.save
        format.html { redirect_to @telephone_verification, notice: 'Telephone verification was successfully created.' }
        format.json { render json: @telephone_verification, status: :created, location: @telephone_verification }
      else
        format.html { render action: "new" }
        format.json { render json: @telephone_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /telephone_verifications/1
  # PUT /telephone_verifications/1.json
  def update
    @telephone_verification = TelephoneVerification.find(params[:id])

    respond_to do |format|
      if @telephone_verification.update_attributes(params[:telephone_verification])
        format.html { redirect_to @telephone_verification, notice: 'Telephone verification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @telephone_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telephone_verifications/1
  # DELETE /telephone_verifications/1.json
  def destroy
    @telephone_verification = TelephoneVerification.find(params[:id])
    @telephone_verification.destroy

    respond_to do |format|
      format.html { redirect_to telephone_verifications_url }
      format.json { head :no_content }
    end
  end
end
