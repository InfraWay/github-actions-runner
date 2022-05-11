Custom 
https://hub.docker.com/r/infraway/github-actions-runner/tags

https://github.com/InfraWay/helm/tree/main/charts/github-actions-runner

Example runner manifest:

```
apiVersion: actions.summerwind.dev/v1alpha1
kind: RunnerDeployment
metadata:
  name: my-actions-runner
  namespace: actions-runner-system
spec:
  replicas: 1
  template:
    spec:
      organization: my-org
      labels:
        - dind
        - ephemeral
        - infraway
      dockerdWithinRunnerContainer: true
      image: infraway/github-actions-runner:dind
      env:
        - name: RUNNER_FEATURE_FLAG_EPHEMERAL
          value: "true"
```
