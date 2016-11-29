class SubmissionsController < ApplicationController
  before_action :current_user_must_be_submission_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_submission_user
    submission = Submission.find(params[:id])

    unless current_user == submission.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @submissions = Submission.all

    render("submissions/index.html.erb")
  end

  def show
    @submission = Submission.find(params[:id])

    render("submissions/show.html.erb")
  end

  def new
    @submission = Submission.new

    render("submissions/new.html.erb")
  end

  def create
    @submission = Submission.new

    @submission.question_id = params[:question_id]
    @submission.user_id = params[:user_id]
    @submission.selection = params[:selection]

    save_status = @submission.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/submissions/new", "/create_submission"
        redirect_to("/submissions")
      else
        redirect_back(:fallback_location => "/", :notice => "Submission created successfully.")
      end
    else
      render("submissions/new.html.erb")
    end
  end

  def edit
    @submission = Submission.find(params[:id])

    render("submissions/edit.html.erb")
  end

  def update
    @submission = Submission.find(params[:id])

    @submission.question_id = params[:question_id]
    @submission.user_id = params[:user_id]
    @submission.selection = params[:selection]

    save_status = @submission.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/submissions/#{@submission.id}/edit", "/update_submission"
        redirect_to("/submissions/#{@submission.id}", :notice => "Submission updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Submission updated successfully.")
      end
    else
      render("submissions/edit.html.erb")
    end
  end

  def destroy
    @submission = Submission.find(params[:id])

    @submission.destroy

    if URI(request.referer).path == "/submissions/#{@submission.id}"
      redirect_to("/", :notice => "Submission deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Submission deleted.")
    end
  end
end
