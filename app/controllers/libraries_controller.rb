class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
    @library_lists = @libraries.in_groups_of(3)
    @library_rest = @library_lists[1,@library_lists.length]
    @photos = Photo.all
    @events = Event.all
    @library = Library.new
    @photo = @library.photos.build
  end
  
  def new
    @library =  Library.new
  end
  
  
  def show
    @library = Library.find(params[:id])
    @last = @library.photos.last
  end
  
  def create
    @library = Library.new(params[:library])
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

  private

  def library_params
    params.require(:library).permit(:name, :photos_attributes=> [:id,:image,:library_id])
  end
  
end
