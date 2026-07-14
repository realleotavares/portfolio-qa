$run = Invoke-RestMethod -Uri 'https://api.github.com/repos/realleotavares/portfolio-qa/actions/runs?per_page=1'
$jobsUrl = $run.workflow_runs[0].jobs_url
$jobs = Invoke-RestMethod -Uri $jobsUrl
$failedJob = $jobs.jobs | Where-Object { $_.conclusion -eq 'failure' }
$log = Invoke-RestMethod -Uri "https://api.github.com/repos/realleotavares/portfolio-qa/actions/jobs/$($failedJob.id)/logs"
$log -split "`n" | Select-Object -Last 50
