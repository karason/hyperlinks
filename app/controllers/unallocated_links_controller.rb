class UnallocatedLinksController < ApplicationController
  # GET /unallocated_links
  # GET /unallocated_links.json
  def index
    @unallocated_links = UnallocatedLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unallocated_links }
    end
  end

  # GET /unallocated_links/1
  # GET /unallocated_links/1.json
  def show
    @unallocated_link = UnallocatedLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unallocated_link }
    end
  end

  # GET /unallocated_links/new
  # GET /unallocated_links/new.json
  def new
    @unallocated_link = UnallocatedLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unallocated_link }
    end
  end

  # GET /unallocated_links/1/edit
  def edit
    @unallocated_link = UnallocatedLink.find(params[:id])
  end

  # POST /unallocated_links
  # POST /unallocated_links.json
  def create
    @unallocated_link = UnallocatedLink.new(params[:unallocated_link])

    respond_to do |format|
      if @unallocated_link.save
        format.html { redirect_to @unallocated_link, notice: 'Unallocated link was successfully created.' }
        format.json { render json: @unallocated_link, status: :created, location: @unallocated_link }
      else
        format.html { render action: "new" }
        format.json { render json: @unallocated_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unallocated_links/1
  # PUT /unallocated_links/1.json
  def update
    @unallocated_link = UnallocatedLink.find(params[:id])

    respond_to do |format|
      if @unallocated_link.update_attributes(params[:unallocated_link])
        format.html { redirect_to @unallocated_link, notice: 'Unallocated link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unallocated_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unallocated_links/1
  # DELETE /unallocated_links/1.json
  def destroy
    @unallocated_link = UnallocatedLink.find(params[:id])
    @unallocated_link.destroy

    respond_to do |format|
      format.html { redirect_to unallocated_links_url }
      format.json { head :no_content }
    end
  end
end
