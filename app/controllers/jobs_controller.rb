class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :my_opportunities]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_job

  include JobsConcern
  include JobsViewsConcern
  include UserConcern

  def search 
    @jobs ||= Job.find_jobs_by_title(params[:job]).page(params[:page]).per(8)
    @page_name_index = page_name("index")
  end
  
  def search_with_category
    @jobs ||= Job.find_jobs_by_category_id(params[:category_id]).page(params[:page]).per(8)
    @page_name_index = page_name("index")
 
    render "jobs/search", job: @jobs
  end

  def index
    @jobs ||= Job.find_jobs_ordered_by_id_desc.page(params[:page]).per(8)
    @page_name_index = page_name("index")
  end

  def my_opportunities
    @jobs ||= Job.find_jobs_by_user_owner(current_user).page(params[:page]).per(8)
  end

  # GET /jobs/1 or /jobs/1.json
  def show
    @page_name_index = page_name("show")
  end

  # GET /jobs/new
  def new
    if user_signed_in?
      if user_is_a_company_or_admim?(current_user)
        @job = Job.new
        @categories = Category.all
      else
        flash[:alert] = "O teu tipo de usuário não permite criar uma vaga."
        redirect_to jobs_path
      end
       
    else
      redirect_to new_user_session_path
    end
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs or /jobs.json
  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    
    respond_to do |format|
      if @job.save!

        @candidates = User.find_by_category_id( @job.category_id )
        
        if @candidates.any?
          #Send email notification
          NotificationJob.perform_later(@job.id)
        end

        format.html { redirect_to job_url(@job), notice: "Oportunidade criada com sucesso." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update!(job_params)

       @candidates = User.find_by_category_id( @job.category_id )
        
        if @candidates.any?
          #Send email notification
          NotificationJob.perform_later(@job.id)
        end
        
        format.html { redirect_to job_url(@job), notice: "Oportunidade actualizada com sucesso." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job.destroy!

    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Oportunidade eliminada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    def invalid_job
      logger.error "Attempt to access invalid job #{params[:id]}"
      redirect_to jobs_url, info: "Vaga de emprego invalida."
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.require(:job).permit(:title, :type_job, :content, :salary, :category_id )
    end

end
