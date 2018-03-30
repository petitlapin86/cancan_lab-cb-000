class NotesController < ApplicationController

def new
end

    def create #cant create a note if you arent logged in
      note = Note.new(note_params)
      note.user = current_user
      note.save!
      redirect_to '/'
    end

def show
end

    def update #can update only your own notes
      @note.update(note_params)
      redirect_to '/'
    end


def edit
end

def index
end

private


end
