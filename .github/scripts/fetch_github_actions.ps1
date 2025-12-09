$repo='hkn582004/Project4_CypressBDD'
try {
  $runs = Invoke-RestMethod -Uri ('https://api.github.com/repos/' + $repo + '/actions/runs?per_page=5') -Headers @{ 'User-Agent'='CI-Check' }
  $runs.workflow_runs | Select-Object id,name,head_branch,head_sha,status,conclusion,html_url | ConvertTo-Json -Depth 5
  if ($runs.workflow_runs.Count -gt 0) {
    $id = $runs.workflow_runs[0].id
    $jobs = Invoke-RestMethod -Uri ('https://api.github.com/repos/' + $repo + '/actions/runs/' + $id + '/jobs') -Headers @{ 'User-Agent'='CI-Check' }
    $jobs.jobs | Select-Object id,name,status,conclusion,steps | ConvertTo-Json -Depth 6
  }
} catch {
  Write-Error $_.Exception.Message
}
