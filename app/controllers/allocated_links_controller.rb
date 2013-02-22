class AllocatedLinksController < ApplicationController
  # GET /allocated_links
  # GET /allocated_links.json
  def index
    @allocated_links = AllocatedLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @allocated_links }
    end
  end

  # GET /allocated_links/1
  # GET /allocated_links/1.json
  def show
    @allocated_link = AllocatedLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @allocated_link }
    end
  end

  # GET /allocated_links/new
  # GET /allocated_links/new.json
  def new
    @allocated_link = AllocatedLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @allocated_link }
    end
  end

  # GET /allocated_links/1/edit
  def edit
    @allocated_link = AllocatedLink.find(params[:id])
  end

  # POST /allocated_links
  # POST /allocated_links.json
  def create
    @allocated_link = AllocatedLink.new(params[:allocated_link])

    respond_to do |format|
      if @allocated_link.save
        format.html { redirect_to @allocated_link, notice: 'Allocated link was successfully created.' }
        format.json { render json: @allocated_link, status: :created, location: @allocated_link }
      else
        format.html { render action: "new" }
        format.json { render json: @allocated_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /allocated_links/1
  # PUT /allocated_links/1.json
  def update
    @allocated_link = AllocatedLink.find(params[:id])

    respond_to do |format|
      if @allocated_link.update_attributes(params[:allocated_link])
        format.html { redirect_to @allocated_link, notice: 'Allocated link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @allocated_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocated_links/1
  # DELETE /allocated_links/1.json
  def destroy
    @allocated_link = AllocatedLink.find(params[:id])
    @allocated_link.destroy

    respond_to do |format|
      format.html { redirect_to allocated_links_url }
      format.json { head :no_content }
    end
  end
end
