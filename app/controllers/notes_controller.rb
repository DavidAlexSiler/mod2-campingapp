class NotesController < ApplicationController

    def index 
        @notes = Note.all
    end

    def show
        @note = Note.find(params[:id])
    end

    def new
        @note = Note.new
    end
    
    def create
        @note = Note.new(note_params)
        @note.user_id = session[:user_id]
        if @note.save
            redirect_to note_path(@note)
        else
            render :new
        end
    end

    def edit
        @note = Note.find(params[:id])
    end

    def update
        @note = Note.find(params[:id])
        @note.user_id = session[:user_id]
        if @note.update(note_params)
            redirect_to note_path(@note)
        else
            render :new
        end
    end

    def destroy
        @note = Note.find(params[:id])
        if @note.user_id = session[:user_id]
            @note.destroy
        else
            flash[:info] = "You can only delete your own notes."
        end
        redirect_to notes_path
    end

    private

    def note_params
        params.require(:note).permit(:id, :user_id, :blog, :img_url, :title)
    end

    

end
