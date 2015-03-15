class MentorsController < ApplicationController
  # New Mentor
  def new
    @mentor = Mentor.new
  end

  # Edit an Existing Mentor
  def edit
    @mentor = Mentor.find(params[:id])
  end

  # Create a new mentor
  def create
    @mentor = Mentor.new(mentor_params)

    # If the mentor isn't valid, get outta there
    if @mentor.save
      redirect_to @mentor
    else
      render 'new'
    end
  end

  # Show specific mentor
  def show
    @mentor = Mentor.find(params[:id])
  end

  # Show all Mentors
  def index
    @mentors = Mentor.all
  end

  # Update an mentor
  def update
    @mentor = Mentor.find(params[:id])

    if @mentor.update(mentor_params)
      redirect_to @mentor
    else
      render 'edit'
    end
  end

  # Destroy Things
  def destroy
    @mentor = Mentor.find(params[:id])
    @mentor.destroy

    redirect_to mentors_path
  end

  # Private Methods
  private

  def mentor_params
    params.require(:mentor).permit(:name,:skills,:email,:twitter)
  end
end
