class LibrariesController < ApplicationController
  layout 'application'
  
  def index
    @libraries = Library.all
    @library = Library.new
    @resource = @library.resources.build
  end
  
  def new
    @library =  Library.new(:name=> params[:name])
    @resource = @library.resources.build
  end
  
  
  def show
    @library = Library.find(params[:id])
    @last = @library.resources.last
    respond_to do |format|
      format.js
      format.html {render @library}
    end

  end
  
  def create
    @library = Library.create(params[:library])
    redirect_to :controller=>:libraries, :action=>:index
  end
  
  def edit
    @library = Library.find(params[:id])
  end

  def update
    @library = Library.find(params[:id])
  end

  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    respond_to do |format|
      format.html { redirect_to(libraries_url) }
      format.xml  { head :ok }
    end
  end
  
  def require_existing_photo
    @library = Library.find(params[:library_id])
    
  end
  
end
