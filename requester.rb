class Requester
  attr_accessor :company_name, :company_ownership, :released_jobs

  def initialize(name,ownership)
    @company_name = name
    @company_ownership = ownership
    @released_jobs = Array.new
  end

  def create_job(job_title,job_type,job_deadline)
    released_jobs << Job.new(job_title,job_type,job_deadline,self)
  end

  def add_job(object)
    if object.is_a?(Job)
      @released_jobs << object
      object.requester = self
    else
      puts "This is not a Job object !  -  Please Retry."
    end
  end

end