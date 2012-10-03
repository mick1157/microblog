class EmailIdsController < ApplicationController
  # GET /email_ids
  # GET /email_ids.json
  def index
    @email_ids = EmailId.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @email_ids }
    end
  end

  # GET /email_ids/1
  # GET /email_ids/1.json
  def show
    @email_id = EmailId.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email_id }
    end
  end

  # GET /email_ids/new
  # GET /email_ids/new.json
  def new
    @email_id = EmailId.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email_id }
    end
  end

  # GET /email_ids/1/edit
  def edit
    @email_id = EmailId.find(params[:id])
  end

  # POST /email_ids
  # POST /email_ids.json
  def create
    @email_id = EmailId.new(params[:email_id])

    respond_to do |format|
      if @email_id.save
        format.html { redirect_to @email_id, notice: 'Email was successfully created.' }
        format.json { render json: @email_id, status: :created, location: @email_id }
      else
        format.html { render action: "new" }
        format.json { render json: @email_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /email_ids/1
  # PUT /email_ids/1.json
  def update
    @email_id = EmailId.find(params[:id])

    respond_to do |format|
      if @email_id.update_attributes(params[:email_id])
        format.html { redirect_to @email_id, notice: 'Email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @email_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_ids/1
  # DELETE /email_ids/1.json
  def destroy
    @email_id = EmailId.find(params[:id])
    @email_id.destroy

    respond_to do |format|
      format.html { redirect_to email_ids_url }
      format.json { head :no_content }
    end
  end
end
