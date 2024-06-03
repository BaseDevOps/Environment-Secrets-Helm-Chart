# Environment Secrets Helm-Chart

Helm Chart to generate secrets and configmaps from sensible data available as environment variables at install time. The main use case is to store secrets in AWS SSM Parameter Store, that are then fetched in a Pipeline and stored as Kubernetes secrets through this Helm Chart.
