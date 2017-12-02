
Quick test
```
. .env ; CI_PROJECT_ID=9 CI_PIPELINE_ID=3359 PIPELINE_RELEASE_TYPE=head CI_JOB_ID=34062 ./bin/update_dashboard
```


Quick test disabling JWT
```
. .env ; JWT_DISABLED=1 CI_PROJECT_ID=9 CI_PIPELINE_ID=3359 PIPELINE_RELEASE_TYPE=head CI_JOB_ID=34062 ./bin/update_dashboard
```


