# U.S. General Services Administration

# {{ ssp.system_characteristics.system_name }} ({{ ssp.system_characteristics.system_name_short }})
# Lightweight Security Authorization Process
# System Security and Privacy Plan (SSPP)
# {% md_datestamp format='%B %d, %Y' %}

![GSAIT Logo](./img/gsa_it_logo.png)

## Document Prepared By
{% for party in ssp.metadata.responsible_parties | parties_for_role("prepared-by", ssp) %}

|   |   |
| - | - |
| **{{ party.type.value | title }} Name** | {{ party.name }} |
{% set address = party.addresses | first_or_none %}
{% for addr_line in address.addr_lines | as_list %}
| **Address Line {{ loop.index }}** | {{ addr_line }} |
{% endfor %}
{% if address %}
| **City, State Zip** | {{ address.city }}, {{ address.state }} {{ address.postal_code }} |
{% endif %}
{% endfor %}

## Document Revision History

{% set prepared_by = ssp.metadata.responsible_parties | parties_for_role("prepared-by", ssp) | first_or_none %}
| Date | Comments | Version | Author |
| ---- | -------- | ------- | ------ |
{% for revision in ssp.metadata.revisions | as_list %}
{% set revision_prepared_by = control_interface.get_prop(revision, "prepared-by") | get_party(ssp) | get_default(prepared_by) %}
| {{ revision.last_modified.strftime('%Y-%m-%d') if revision.last_modified else '' }} | {{ revision.title }} | {{ revision.version }} | {{ revision_prepared_by.name }} |
{% endfor %}
