class NewtasksController < ApplicationController
  # GET /newtasks
  # GET /newtasks.xml
  def index
    @newtasks = Newtask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newtasks }
    end
  end

  # GET /newtasks/1
  # GET /newtasks/1.xml
  def show
    @newtask = Newtask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newtask }
    end
  end

  # GET /newtasks/new
  # GET /newtasks/new.xml
  def new
    @newtask = Newtask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newtask }
    end
  end

  # GET /newtasks/1/edit
  def edit
    @newtask = Newtask.find(params[:id])
  end

  # POST /newtasks
  # POST /newtasks.xml
  def create
    @newtask = Newtask.new(params[:newtask])

    respond_to do |format|
      if @newtask.save
        format.html { redirect_to(@newtask, :notice => 'Newtask was successfully created.') }
        format.xml  { render :xml => @newtask, :status => :created, :location => @newtask }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newtask.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newtasks/1
  # PUT /newtasks/1.xml
  def update
    @newtask = Newtask.find(params[:id])

    respond_to do |format|
      if @newtask.update_attributes(params[:newtask])
        format.html { redirect_to(@newtask, :notice => 'Newtask was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newtask.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newtasks/1
  # DELETE /newtasks/1.xml
  def destroy
    @newtask = Newtask.find(params[:id])
    @newtask.destroy

    respond_to do |format|
      format.html { redirect_to(newtasks_url) }
      format.xml  { head :ok }
    end
  end
end
