# 9 General System Description

<!--
Instructions: The general information system description must consist of the following:
*	How the system is commensurate with the essential characteristics of secure systems defined in NIST SP 800-53 Revision 5, other applicable NIST guidance and standards, and Federal laws and regulations. In addition, the description shall describe the service model and deployment model.
*	Convey the who, what, when, where, and how regarding the system function and purpose across the entire technology stack and all users.
-->

{{ ssp.system_characteristics.description }}

## 9.1 Information System Locations

Physically, the {{ ssp.system_characteristics.system_name_short }} environment resides at the locations identified below.

{% md_clean_include "ssp-markdown/table_9_1.md" heading_level=3 %}

## 9.2 Information System Components and Boundaries

<!--
Instructions: In the space that follows, describe the information system’s major components, interconnections, and boundaries in sufficient detail that accurately depicts the authorization boundary for the information system. The desired architecture boundary for an information system should be inclusive of all functions and services necessary to secure, operate, and administer the information system - these include all components and supporting information system components (e.g., logging platform, monitoring solutions, ticketing solutions, vulnerability scanning, authentication solutions, etc.). A system is typically deployed in a logically or physically separated environment situated behind a firewall, with only necessary ingress/egress port openings to facilitate required operations. Integration with assets/device outside of the protected enclave supporting the information system contemplated for an Authorization to Operate (ATO) including but not limited to 1) shared assets, 2) corporate networks, or 3) third party services (e.g., cloud service provider (CSP) offerings) are a function of risk. The latter is allowed if the connecting CSP offering is also Federal Risk and Authorization Management Program (FedRAMP)-authorized. In all cases, integrations with assets/devices outside of the ATO boundary are not guaranteed for approval and reviewed/permitted on a case-by-case basis after a complete understanding of the associated risks. Please ensure that the discussion on boundaries is consistent with the network diagram shown in Section 9.5. For further details, please reference [CIO-IT Security-19-95](https://insite.gsa.gov/node/166494): Security Engineering Architecture Reviews.
-->

The components of the {{ ssp.system_characteristics.system_name_short }} environment can be broken down into the following groups of asset types. The assets are also portrayed in the network diagram in Section 9.5.

The controls described in Section 13 of this document may apply to some or all of these asset types.

{% md_clean_include "ssp-markdown/table_9_2.md" %}

## 9.3 Information System Web Site URL Addresses

The following table lists the web site URL addresses for {{ ssp.system_characteristics.system_name_short }}.

{% md_clean_include "ssp-markdown/table_9_3.md" heading_level=3 %}

## 9.4 Types of Users

{% md_clean_include "ssp-markdown/table_9_4.md" heading_level=3 %}

{% md_clean_include "ssp-markdown/user_access_descriptions.md" heading_level=3 %}

## 9.5 Network Architecture

The following section provides a written description of the network architecture of {{ ssp.system_characteristics.system_name_short }}.

<!--
Instructions: The architecture diagram must fully and clearly define the authorization boundary through both pictorial diagram(s) and written descriptions.
Ensure the following elements are incorporated into the architecture diagrams and narratives:
The network architecture must follow the criteria listed in CIO-IT Security-19-95: Security Engineering Architecture Reviews. The GSA Security Engineering team can provide architectural templates for reference - contact seceng@gsa.gov.
• 	The diagram(s) and narratives should include ALL assets, services, devices, and software, both physical and virtual, which constitute the information system. These shall include all physical and virtual resources. The diagram(s) and narratives should also include any COOP/DR site integrations as well as any test/development environments that are in the boundary.
• 	If shared assets or services are used, including corporate shared services, they must be appropriately defined and documented as a shared service within the ATO boundary of the system or within the corresponding ATO boundary of a relevant, authorized system. All components must be accounted for within an ATO boundary.
• 	If on-premise or cloud services are used to support operation, maintenance, management, or security of the services in scope of the ATO, be sure they are reflected in the network architecture with related flows. If integrated with the GSA security stack indicate that integration in the network diagram. Depending on the nature and type of integration and sensitivity of the data, these dependent systems may also need to have an ATO; usage considered for risk acceptance; or, if not risk accepted, potentially removed from the architecture. All SaaS, IaaS or PaaS leveraged to support delivery of the system must have an ATO, approved by GSA or FedRAMP. For public facing systems, integration with external systems including but not limited to other cloud assets via Application Programming Interfaces (APIs) or third-party enablers shall be appropriately secured.
• 	Ensure all authentication points (this includes but is not limited to Amazon Web Services (AWS) console, jump, machine resources, network devices, application, API, enablers, etc. (as applicable)), are defined. At all FIPS 199 levels MFA is required for privileged, non-privileged and/or Internet accessible logins.
• 	The system boundary contains all components, devices, services, communication paths (VPNs, API calls, etc.). Diagram(s) should be sufficiently detailed and identify flows with source/destination, ports/protocols, or whether the related traffic is encrypted or not. References to ports/protocols table(s) are acceptable (for large sets of ports). Please be sure the tables identifying ports reflect whether they are encrypted or not. Tables should easily track to the architecture diagram.
• 	All access control mechanisms, such as firewalls, router ACLs, subnets, proxies, and cloud-based analogs such as firewalls and network access controls configurations shall be fully documented in terms of specific access control rules, specifying source, destination, protocol, and other relevant attributes, as necessary.
• 	The diagram must include a predominant border drawn around all system components and services included in the authorization boundary. Separate borders around protected enclaves, subnets, and DMZs are also advisable.
-->

{{ ssp.system_characteristics.authorization_boundary.description }}

The following architectural diagram provides a visual depiction of the major hardware components of the {{ ssp.system_characteristics.system_name_short }}.

{% for diagram in ssp_interface.safe_retrieval(ssp.system_characteristics.authorization_boundary, 'diagrams', []) %}
![{{diagram.caption}}]({{ ssp_interface.get_diagram_href(diagram) }})
<br/>Figure 9-{{loop.index}}. Network Diagram
{% endfor %}
