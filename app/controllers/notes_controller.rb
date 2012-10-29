class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect @note, :notice => 'Note created'
    else
      render :new
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  private

  def note_params
    params.permit(:note)
  end
end