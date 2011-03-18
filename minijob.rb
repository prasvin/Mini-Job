require 'requester'
require 'job'
require 'applicant'

r1 = Requester.new("Sprout","Private");
r1.create_job("Manager","Permanent","8 Weeks");
r2 = Requester.new("IOE","Public University");
r2.create_job("Lecturer","Temporary","24 Weeks");
j1 = Job.new("Developer","Permanent","4 Weeks");
ram = Applicant.new("Ram", "Nepal", "mail");
shyam = Applicant.new("Shyam", "Nepal", "email");

