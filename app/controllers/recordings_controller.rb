class RecordingsController < ApplicationController
  # GET /recordings
  # GET /recordings.json
  def index
    @recordings = Recording.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recordings }
    end
  end

  # GET /recordings/1
  # GET /recordings/1.json
  def show
    @recording = Recording.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recording }
    end
  end

end
