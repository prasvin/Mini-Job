class Job
  attr_accessor  :job_title, :job_type, :deadline, :requester, :applicants

  def initialize(title,type,deadline,*requester)
    @job_title = title
    @job_type = type
    @deadline = deadline
    @requester = requester
    @applicants = Array.new
  end

end
