# 10.10.1 List of AWS Services Used
<!--
Instructions: List AWS services used in the system boundary in the table below.
-->

Table 10-5. AWS Services

| AWS Service Name | Approval Status (FedRAMP and/or OCISO Approved) | Brief Description of Use(s) |
| ---------------- | ----------------------------------------------- | --------------------------- |

# 10.10.2 Identity and Access Control Management
<!--
Instructions: Describe the identity and access control design for AWS platform level access. It should include technology used for authentication and authorization such as federation, single sign-on and/or identity access management (IAM). Describe how MFA is achieved. Provide details on authentication and authorization for API access, how is MFA achieved for interactive API or command line access. Describe how least privilege is being implemented, what methods and tools are being utilized to develop and assign IAM policies to meet least privilege requirements.
-->

# 10.10.3 Separation of Workloads
<!--
Instructions: Describe the AWS account strategy for defining separation of workloads (e.g., Dev, Test, Prod are separate AWS Accounts). Describe the network segregation in place between these environments (e.g., All AWS Accounts are logically separated from each other with no mesh network or connectivity between them.). Describe how new code, features, enhancements, and fixes are promoted from lower environments to production environments.
-->

# 10.10.4 Cloud Network Design
<!--
Instructions: Describe the network's high availability strategy. For example:
•	Web server fleet is behind elastic load balancers
•	Utilizing multiple FedRAMP authorized regions
•	Utilizing multiple availability zones
•	Public websites are behind CloudFront
•	Utilizing Web Application Firewalls to mitigate exploits and denial of service attacks
•	Utilizing public and private subnets
•	Utilizing private endpoints so traffic does not traverse public internet if it can stay internal to AWS.
-->

# 10.10.5 Network Security and Microsegmentation
<!--
Instructions: Describe the network's security group and network access control list (NACL) strategy. (e.g., wide permissions are not in place and each Security Group only allows the traffic it requires, 0.0.0.0/0 rules are not in place).
-->

# 10.10.6 Data Encryption in Transit
<!--
Instructions: Describe the network's encryption in transit strategy (e.g., Secure Sockets Layer/Transport Layer Security [SSL/TLS] is in use for public web servers, the SSL connections are terminated on the hosts instead of the load balancer to provide true end to end encryption, uses of other application layer encryption technology such as SSH, Secure File Transfer Protocol (SFTP), etc.).
-->

# 10.10.7 Data Encryption at Rest
<!--
Instructions: Describe the encryption at rest strategy. (e.g., all Elastic Block Store (EBS) Drives and Simple Storage Service (S3) Buckets have AES-256 Encryption Enabled, Relational Database Service (RDS) databases have force encryption parameters enabled, Simple Notification Service (SNS) Topics have encryption enabled, data encrypted in field, table, column level to protect sensitive data stored within the database, files and logs with sensitive information are encrypted before placing in buckets and file systems).
-->

# 10.10.8 S3 Bucket Security
<!--
Instructions: Describe the S3 Bucket Security Strategy. (e.g., all S3 Buckets have AES-256 encryption enabled, all S3 Buckets do not have public access enabled or is explicitly blocked from being public, least privilege access in place for each bucket, AWS config rules are monitoring changes to S3 Bucket posture and changes to provide operational assurance, no static websites are in use, Amazon Macie is enabled to monitor for sensitive information stored in S3).
-->

# 10.10.9 Key Management Service (KMS) Key Monitoring and Governance
<!--
Instructions: Describe the KMS and Key Management Strategy. (e.g., all AWS encryptable services that can utilize KMS Keys have KMS Keys in place, IAM policies are in place that only allow specific users to manage keys for such services, IAM policies are applied granularly per KMS Key, KMS Keys are rotated every 60 days, KMS activity is monitored in CloudTrail).
-->

# 10.10.10 Governance and Management of AWS Accounts
<!--
Instructions: Describe the AWS account provisioning and decommissioning strategy for all AWS accounts (e.g., production, test, development). Describe any governance, guardrails, or security inheritance achieved by using centralized AWS account provisioning, or by using AWS services such as AWS organization, Service Control Policies (SCPs), AWS Single Sign-On (SSO).
-->

# 10.10.11 Uses of Cloud Native Security Services
<!--
Instructions: Describe the Cloud Native Security Services utilized and how they are implemented. (e.g., Security Hub is enabled to validate meeting CIS Benchmarks, Guard Duty is enabled with flowlog monitoring, AWS Web Application Firewalls (WAFs) are in front of public Elastic Compute Cloud (EC2) servers, AWS Secret Manager is used for key/secret rotation, AWS Macie is enabled to identify and protect sensitive data in S3).
-->

# 10.10.12 Continuous Monitoring and Assessment of AWS Security Posture
<!--
Instructions: Describe how baseline AWS Security is implemented and monitored. (e.g., AWS Security Hub is enabled and meets CIS Benchmarks, AWS Config is used for continuous checks against best practices and deviation, third-party tools are used for continuous assessment of cloud posture, CloudTrail and CloudWatch logs are configured and shipped to the GSA Enterprise Logging Platform (ELP), automated alerts are in place for sensitive changes, Security Hub is periodically reviewed to validate compliance against CIS).
-->
