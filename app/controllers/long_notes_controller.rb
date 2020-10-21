class LongNotesController < ApplicationController
  before_action :set_long_note, only: [:show, :edit, :update, :destroy]

  def index
    @message = ""
    if params[:query].present?
      sql_query = " \
        long_notes.description ILIKE :query \
        OR long_notes.title ILIKE :query \
      "
      @long_notes = policy_scope(LongNote).where(sql_query, query: "%#{params[:query]}%").with_rich_text_description_and_embeds
      @message = "⚠️ Aucune note ne correspond à votre recherche. ⚠️" if @long_notes.count == 0
    else
      @long_notes = policy_scope(LongNote).order(updated_at: :desc).with_rich_text_description_and_embeds
    end
    if params[:id]
      @long_note = LongNote.find(params[:id])
    else
      @long_note = @long_notes.first
    end
  end

  def show
  end

  def new
    @long_note = LongNote.new
    @long_note.user = current_user
    authorize @long_note
  end

  def create
    @long_note = LongNote.new(long_note_params)
    @long_note.user = current_user
    authorize @long_note

    if @long_note.save
      redirect_to long_notes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @long_note.update(long_note_params)

    if @long_note.save
      redirect_to long_notes_path
    else
      render :edit
    end
  end

  def set_public
    @long_note = LongNote.find(params[:long_note_id])
    authorize @long_note
    if @long_note.update_attribute(:publicly_displayed, params[:long_note_id])
      redirect_to long_notes_path(@long_note), notice: if @long_note.publicly_displayed then "This one is public now. You can share it!" else "Set as private." end
    else
      render :edit
    end
  end

  def destroy
    @long_note.destroy
    redirect_to long_notes_path
  end

  private

  def set_long_note
    @long_note = LongNote.find(params[:id])
    authorize @long_note
  end

  def long_note_params
    params.require(:long_note).permit(:title, :description, :publicly_displayed, images: [])
  end
end
