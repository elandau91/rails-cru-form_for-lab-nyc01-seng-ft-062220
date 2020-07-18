class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def show
        @song = Song.find(params[:id])
    end

    def create
        #debugger
        @song = Song.create(song_params)

        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)

        redirect_to song_path(@song)
    end


    private

    def song_params
        params.require(:song).permit(:name, :artist, :genre)

    end

end
