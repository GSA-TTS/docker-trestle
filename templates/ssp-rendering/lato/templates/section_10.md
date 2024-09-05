# 10 System Environment

{% md_clean_include "ssp-markdown/system_environment_description.md" heading_level=2 %}

## 10.1 Asset Inventory

The following table identifies the virtual and physical components of the {{ ssp.system_characteristics.system_name_short }}.

{% md_clean_include "ssp-markdown/table_10_1.md" heading_level=3 %}

## 10.2 External Services

The following table(s) identifies the external services supporting {{ ssp.system_characteristics.system_name_short }}.

{% md_clean_include "ssp-markdown/table_10_2.md" heading_level=3 %}

## 10.3 Software Inventory

The following table lists the principal software components (e.g., operating system, database, web software, etc.) for {{ ssp.system_characteristics.system_name_short }}.

{% md_clean_include "ssp-markdown/table_10_3.md" heading_level=3 %}

## 10.4 Data Flow

<!--
Instructions: In this section describe the flow of data in and out of system boundaries and insert a data flow diagram. If necessary, include multiple data flow diagrams.
Ensure the following elements are incorporated into the data flow diagrams and narratives:
•	Indicate source and destination of data (Is communication crossing DMZs, subnets, to another authorization boundary, external service, internet, etc. Also include whether it is one way inbound, one way outbound, or bi-directional).
•	Identify the ports and protocols planned for use and whether the flows are encrypted.
•	Note any access control mechanisms in place to restrict the flow of authorized traffic between defined and approved endpoints.
•	Clearly identify anywhere Federal data is to be processed, stored, or transmitted
•	Document any data flow through approved external or internal Continuous Integration systems (CI) and code repositories in flow narratives and SSPP diagrams. Clearly identify data flows for privileged, non-privileged, and customer access.
•	Include data flows associated with BOTs, as applicable, to ensure data flows used by BOTS are depicted.
-->

The Data Flow Diagram (DFD) below maps out the flow of information traveling within an information system and between infrormation systems.

{% for diagram in ssp_interface.safe_retrieval(ssp.system_characteristics.data_flow, 'diagrams', []) %}
![{{diagram.caption}}]({{ ssp_interface.get_diagram_href(diagram) }})
<br/>Figure 10-{{loop.index}}. Data Flow Diagram
{% endfor %}

## 10.5 System Data Nature

{% md_clean_include "ssp-markdown/system_data_nature.md" heading_level=3 %}

## 10.6 Ports, Protocols, and Services

{% md_clean_include "ssp-markdown/table_10_4.md" heading_level=3 %}

## 10.7 Transition to IPv6

{% md_clean_include "ssp-markdown/ipv6.md" heading_level=3 %}

## 10.8 DevOps/DevSecOps Management

{% md_clean_include "ssp-markdown/devsecops.md" heading_level=3 %}

## 10.9 Container-Based Workload Management

{% md_clean_include "ssp-markdown/containers.md" heading_level=3 %}

## 10.10 AWS Management

{% md_clean_include "ssp-markdown/aws.md" heading_level=3 %}
