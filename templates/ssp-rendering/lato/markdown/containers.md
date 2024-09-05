# 10.9.1 Container Image Build and Management
<!--
Instructions: Describe how images for Containers are built, how a Continuous Integration/Continuous Delivery (CI/CD) pipeline is used to build and release container images, describe the steps involved in the CI/CD pipeline, describe security checks and tools used in the pipeline and describe how container images are protected.
-->

# 10.9.2 Container Image Scanning
<!--
Instructions: Describe how container images are scanned for security vulnerabilities. Which tools are used for container vulnerability scanning? How often are scans performed and how are images in the CI/CD pipeline scanned. Describe how vulnerabilities identified in containers are remediated. Note: GSA OCISO requires the use of Prisma Cloud for internal systems at GSA.
-->

# 10.9.3 Container Image Registry
<!--
Instructions: Describe which container registry is used (e.g., Amazon Elastic Container Registry [ECR], Docker Hub.). Describe what functions of the container registry are used. Describe if it is self-hosted or a managed service provided by a CSP. If it is an external provider, is the service FedRAMP compliant or approved by GSA? Describe the access control mechanisms and security control measures in place for the Container Registry.
-->

# 10.9.4 Dockerfile Usage
<!--
Instructions: Describe how Docker images are developed. Are the Docker images built from scratch or are base images from an external source used? If it is from scratch, explain any code quality mechanisms used, such as a linting tool. If images from an external source are used, explain the mechanisms in place to ensure this image can be trusted.
-->

# 10.9.5 Logs and Log Integration from Containers
<!--
Instructions: Describe how logs generated from containers are aggregated in a central log repository. Explain the tooling used to analyze logs and trigger action if needed.
-->

# 10.9.6 Hardening of Container Infrastructure
<!--
Instructions: Describe which Container Infrastructure is used. Is a fully managed or semi-managed container platform from a CSP used? Is the service FedRAMP compliant or approved by GSA? Has the cluster been hardened to security guidelines provided by Center for Internet Security (CIS) benchmarks or other similar benchmarks? Are underlying virtual machines run in the cluster hardened?
-->

# 10.9.7 Privilege Management in Cluster and Containers
<!--
Instructions: Describe how least privileges are applied to users or administrators that need access to a cluster. Is Role-Based Access Control (RBAC) used? Is a non-root user used to run the application with the container? Please explain the approach used to ensure least privilege both for the CSP and containers.
-->

# 10.9.8 Container Network Security
<!--
Instructions: Describe how network security control is implemented for communication between cluster resources. Describe the network topology for the container infrastructure? How is network traffic monitored and restricted between containers? How is network traffic isolated from containers to managed services such as a Database or a Caching cluster? Explain the use of any additional tools for container network security and segmentation in a multi-application multi-tenant/multi-application environment.
-->

# 10.9.9 Container Orchestration (Elastic Container Service (ECS), Elastic Kubernetes Service (EKS), Fargate, Kubernetes, etc.)
<!--
Instructions: Describe the Container Orchestrator used. Is it supported or managed by a vendor? Is it FedRAMP compliant or GSA OCISO approved? Has the Orchestrator been hardened to security guidelines provided by the CIS benchmarks or other similar benchmarks?
-->

# 10.9.10 Monitoring and Alerting
<!--
Instructions: Describe how monitoring on Containerized applications is performed. Does the monitoring provide a holistic view across Containers, Cluster, Host machines, communication, and telemetry between containers? Describe how notifications are received when monitoring finds issues of interest.
-->
