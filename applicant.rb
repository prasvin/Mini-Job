class Applicant
  attr_accessor :name, :email, :applied_jobs

  def initialize(fname,lname,email)
    @name = fname + " " + lname
    @email = email
    @applied_jobs = Array.new
  end

  def apply(object)
    if object.is_a?(Job)
      @applied_jobs << object
      object.applicants << self
    else
      puts "This is not a Job object !  -  Please Retry"
    end
  end

end