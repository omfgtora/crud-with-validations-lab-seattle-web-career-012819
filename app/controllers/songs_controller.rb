class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      flash[:success] = "Song successfully created"
      redirect_to @song
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @song.update(song_params)
      flash[:success] = "Song was successfully updated"
      redirect_to @song
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end
  
  def destroy
    @song.delete
    flash[:success] = "Song successfully deleted"
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(
      :title, :released, :release_year, :artist_name, :genre
    )
  end

  def find_song
    @song = Song.find(params[:id])
  end
  
end
