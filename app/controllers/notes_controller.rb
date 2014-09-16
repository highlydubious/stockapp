class NotesController < ApplicationController

  # All notes feed from all mtks
  def index
    @notes = Note.all
  end

  def activity
    @notes = Note.all
  end

  def show
    @notes = Note.find(params[:id])
  end

end
