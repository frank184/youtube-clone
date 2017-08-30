class VideosController < Videos::ApplicationController
  before_action :set_video, except: [:index, :new, :create]

  # GET /videos
  def index
    @videos = Video.all
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # POST /videos
  def create
    @video = Video.new(create_video_params)

    if @video.save
      flash[:notice] = "Successfully created a video"
      redirect_to @video
    else
      flash[:alert] = "Error while creating a video"
      render 'new'
    end
  end

  # GET /videos/:id
  def show
  end

  # GET /videos/:id
  def edit
  end

  # PUT /videos/:id
  def update
    if @video.update(update_video_params)
      flash[:notice] = "Successfully update a video"
      redirect_to @video
    else
      flash[:alert] = "Error while creating a video"
      render 'new'
    end
  end

  # DELETE /videos/:id
  def destroy
  end

  private

    def create_video_params
      params.require(:video).permit(:title, :description, :file)
    end

    def update_video_params
      params.require(:video).permit(:title, :description)
    end
end
