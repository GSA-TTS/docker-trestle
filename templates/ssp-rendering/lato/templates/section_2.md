# 2 Information System Categorization

The overall FIPS 199 information system security categorization is {{ ssp.system_characteristics.security_sensitivity_level }}

<!--
Instructions: A GSA FIPS 199 Security Categorization document must be completed and submitted as an Attachment to this SSPP. A template is available on the [GSA IT Security Forms and Aids page](https://insite.gsa.gov/node/166914)
-->

## 2.1 Information Types
The following table identifies the information types and impact levels that are input, stored, processed, and/or output from the {{ ssp.system_characteristics.system_name_short }} environment. The security impact levels for confidentiality, integrity, and availability for each of the information types are expressed as low, moderate, or high. The security impact levels are based on the potential impact definitions for each of the security objectives (i.e., confidentiality, integrity, and availability) discussed in NIST SP 800-60 and FIPS 199 (Note: The information types found in NIST SP 800-60, Volumes I and II, Revision 1 are the same information types found in the Federal Enterprise Architecture (FEA) Consolidated Reference Model). Refer to Attachment 2 of this System Security and Privacy Plan for the detailed FIPS 199 Analysis supporting the summary determinations below.

Table 2-1. Information Types

| Information Type | Confidentiality | Integrity | Availability |
| ---------------- | --------------- | --------- | ------------ |
{% for info_type in ssp.system_characteristics.system_information.information_types %}
| {{ info_type.title }} | {{ info_type.confidentiality_impact.selected.__root__ }} | {{ info_type.integrity_impact.selected.__root__ }} | {{ info_type.availability_impact.selected.__root__ }} |
{% endfor %}

## 2.2 Potential Impacts of Security Objectives

Based on the information provided above, the potential impacts for each security objective, per FIPS 199, for the {{ ssp.system_characteristics.system_name_short }} environment is summarized in the table below.

Table 2-2. Security Objective Impacts

| Security Objective | Impact Level |
| ------------------ | ------------ |
| Confidentiality    | {{ ssp.system_characteristics.security_impact_level.security_objective_confidentiality }} |
| Integrity          | {{ ssp.system_characteristics.security_impact_level.security_objective_integrity }} |
| Availability       | {{ ssp.system_characteristics.security_impact_level.security_objective_availability }} |

## 2.3 Digital Identity Acceptance Statement

<!--
Instructions: A GSA Digital Identity Acceptance Statement document must be completed and submitted as an Attachment to this SSPP. A template is available on the [GSA IT Security Forms and Aids page](https://insite.gsa.gov/node/166914). Record the summary information below based on the completed template.
-->

Refer to Attachment 3 of this System Security and Privacy Plan for the completed GSA Digital Identity Acceptance Statement form supporting the summary determinations below.

Table 2-3. Digital Identity Acceptance Statement Assurance Level Summary

| Assurance Levels | Implemented Assurance Level |
| ---------------- | --------------------------- |
| Identity Assurance Level (IAL) | IAL{{ control_interface.get_prop(ssp.system_characteristics, 'identity-assurance-level') }} |
| Authentication Assurance Level (AAL) | AAL{{ control_interface.get_prop(ssp.system_characteristics, 'authenticator-assurance-level') }} |
| Federation Assurance Level (FAL) | FAL{{ control_interface.get_prop(ssp.system_characteristics, 'federation-assurance-level') }} |
