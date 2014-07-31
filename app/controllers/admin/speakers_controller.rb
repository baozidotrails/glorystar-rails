class Admin::SpeakersController < Admin::DashboardController
  before_action :set_speaker, except: [:index, :new, :create, :import]

  def index
    @speakers = Speaker.all
  end

  def new
    @speaker = Speaker.new
  end

  def edit
    
  end

  def create
    @speaker = Speaker.new(speaker_params)
    if @speaker.save
      redirect_to admin_speakers_path
    else
      render :new
    end
  end

  def update
    if @speaker.update(speaker_params)
      redirect_to admin_speaker_path(@speaker)
    else
      render :edit
    end
  end

  def destroy
    @speaker.destroy
    redirect_to admin_speakers_path
  end

  def import
    Admin::Speaker.import(params[:file])
    redirect_to admin_speakers_path
  end

private

  def set_speaker
    @speaker = Speaker.find(params[:id])
  end

  def speaker_params
    params.require(:speaker).permit(:name, :title, :org)
  end
end