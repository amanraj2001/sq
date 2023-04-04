use practice;


select * from jobs
select * from job_history

alter table job_history
add constraint fk_job_id foreign key (job_id) references jobs(job_id)

