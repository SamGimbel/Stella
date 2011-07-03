class ListViewsController < ApplicationController
  # GET /list_views
  # GET /list_views.xml
  def index
    @list_views = ListView.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @list_views }
    end
  end

  # GET /list_views/1
  # GET /list_views/1.xml
  def show
    @list_view = ListView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @list_view }
    end
  end

  # GET /list_views/new
  # GET /list_views/new.xml
  def new
    @list_view = ListView.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @list_view }
    end
  end

  # GET /list_views/1/edit
  def edit
    @list_view = ListView.find(params[:id])
  end

  # POST /list_views
  # POST /list_views.xml
  def create
    @list_view = ListView.new(params[:list_view])

    respond_to do |format|
      if @list_view.save
        format.html { redirect_to(@list_view, :notice => 'List view was successfully created.') }
        format.xml  { render :xml => @list_view, :status => :created, :location => @list_view }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @list_view.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /list_views/1
  # PUT /list_views/1.xml
  def update
    @list_view = ListView.find(params[:id])

    respond_to do |format|
      if @list_view.update_attributes(params[:list_view])
        format.html { redirect_to(@list_view, :notice => 'List view was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @list_view.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /list_views/1
  # DELETE /list_views/1.xml
  def destroy
    @list_view = ListView.find(params[:id])
    @list_view.destroy

    respond_to do |format|
      format.html { redirect_to(list_views_url) }
      format.xml  { head :ok }
    end
  end
end
