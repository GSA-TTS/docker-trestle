# 8 Information System Type

The {{ ssp.system_characteristics.system_name_short }} is a {{ gsa.system_type }}

<!--
Instructions: The terms General Support System (GSS) and Major Application are no longer used by NIST. Minor Applications/Subsystems are typically authorized to operate under the authorization of a larger Major Application and do not have a standalone authorization to operate. Systems previously considered a GSS or Major Application should be classified as a Major Information System. Contact ISP at ispcompliance@gsa.gov if there are any questions.
-->

## 8.1 Systems Providing Controls to {{ ssp.system_characteristics.system_name_short }}

<!--
Instructions: List all systems providing controls, the controls they provide, and identify if it is provided as a Common or Hybrid control. Ensure that the interconnections for systems providing controls are included in the network architecture diagram.

Note: Systems can only inherit controls from systems that have a current ATO.
-->

The systems identified in the following table provide controls (common or hybrid) to {{ ssp.system_characteristics.system_name_short }}. List all systems providing controls, the controls they provide, and identify if it is provided as a Common or Hybrid control.

Table 8-1. Systems Providing Controls

| Providing System Name (FISMA System Identifier) | Providing System Owner | Control Identifier, Name | Common/Hybrid |
| --------------------- | ---------------------- | ------------------------ | ------------- |
{% for component in ssp.system_implementation.components %}
{% if component.type != "this-system" %}
| {{ component.title }} | | See section 13 | |
{% endif %}
{% endfor %}

## 8.2 Systems Receiving Controls from {{ ssp.system_characteristics.system_name_short }}

{{ ssp.system_characteristics.system_name_short }} provides the controls (common or hybrid) listed to the systems identified in the following table. List any controls provided to any systems and identify if it is provided as a Common or Hybrid control.

{% md_clean_include 'ssp-markdown/8.2.table_8_2.md' heading_level=3 %}
