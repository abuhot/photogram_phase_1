class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    @id = params[:id]
    @photo_record = Photo.find(@id)
    @photo_url = @photo_record.source
    @caption = @photo_record.caption

  end

  def destroy

    @id = params[:id]
    @photo_record = Photo.find(@id)
    @photo_url = @photo_record.source
    @caption = @photo_record.caption
    @photo_record.destroy

    render("destroy.html.erb")

  end

  def new_form

  render ("new_form.html.erb")
  end

end
