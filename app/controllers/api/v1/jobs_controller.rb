class Api::V1::JobsController < ApplicationController
  def index
    jobs = Job.all
    if params[:categories].present?
      jobs = jobs.where(category: params[:categories])
    end
    
    if params[:min_salary].present?
      jobs = jobs.where("salary >= ?", params[:min_salary])
    end

    render json: jobs.order(created_at: :desc)
  end

  def create
    job = Job.new(job_params)
    if job.save 
      render json: job, status: :created
    else
      render json: job.errors, status: :unprocessable_entity
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :category, :salary)
  end
end

