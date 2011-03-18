class Requester
  attr_accessor :company_name, :company_ownership, :released_jobs

  def initialize
    @released_jobs = Array.new
  end

  def create_job=(object)
    if object.is_a?(Job)
      @released_jobs << object
    else
      puts "This is not a Job object !  -  Please Retry."
    end
  end
end

class Job
  attr_accessor :requester, :job_title, :job_type, :deadline, :applicants

  def initialize
    @applicants = Array.new
  end

  def requester=(object)
    if object.is_a?(Requester)
      @requester = object
    else
      puts "This is not a Requester object !  -  Please Retry"
    end
  end

  def applicants=(object)
    if object.is_a?(Applicant)
      @applicants << object
    else
      puts "This is not an Applicant object !  -  Please Retry"
    end
  end
end

class Applicant
  attr_accessor :fname, :lname, :education, :applied_jobs

  def initialize
    @applied_jobs = Array.new
  end

  def applied_jobs=(object)
    if object.is_a?(Job)
      @applied_jobs << object
    else
      puts "This is not a Job object !  -  Please Retry"
    end
  end
end