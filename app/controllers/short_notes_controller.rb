class ShortNotesController < ApplicationController
  before_action :set_short_note, only: [:show, :edit, :update, :destroy]
  before_action :skip_pundit?

  def index
    @short_notes = policy_scope(ShortNote).order(created_at: :desc)
  end

  def new
    @short_note = current_user.short_notes.new
    authorize @short_note
  end

  def create
    @short_note = current_user.short_notes.new(short_note_params)
    authorize @short_note

    if @short_note.save
      redirect_to short_notes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @short_note.update(short_note_params)

    if @short_note.save
      redirect_to short_notes_path
    else
      render :new
    end
  end

  def destroy
    @short_note.destroy
    redirect_to short_notes_path
  end

  private

  def set_short_note
    @short_note = ShortNote.find(params[:id])
    authorize @short_note
  end

  def short_note_params
    params.require(:short_note).permit(:description, :user_id)
  end
end
