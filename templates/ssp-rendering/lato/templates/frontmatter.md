<center>

# U.S. General Services Administration

# {{ ssp.system_characteristics.system_name }} ({{ ssp.system_characteristics.system_name_short }})
# Lightweight Security Authorization Process
# System Security and Privacy Plan (SSPP)
# {% md_datestamp format='%B %d, %Y' %}

![GSAIT Logo](./img/gsa_it_logo.png)

</center>

<div class="pagebreak"></div>

Document Prepared By
<table>
<tbody>
{% for party in ssp.metadata.responsible_parties | parties_for_role("prepared-by", ssp) %}
<tr>
<th scope="row">{{ party.type.value.title() }} Name</th><td>{{ party.name }}</td>
</tr>
{% set address = party.addresses | first_or_none %}
{% for addr_line in address.addr_lines | as_list %}
<tr>
<th scope="row">Address Line {{ loop.index }}</th><td>{{ addr_line }}</td>
</tr>
{% endfor %}
<tr>
<th scope="row">City, State Zip</th><td>{{ address.city }}, {{ address.state }} {{ address.postal_code }}</td>
</tr>
{% endfor %}
</tbody>
</table>

<div class="pagebreak"></div>

Document Revision History

{% set prepared_by = ssp.metadata.responsible_parties | parties_for_role("prepared-by", ssp) | first_or_none %}
| Date | Comments | Version | Author |
| ---- | -------- | ------- | ------ |
{% for revision in ssp.metadata.revisions | as_list %}
{% set revision_prepared_by = control_interface.get_prop(revision, "prepared-by") | get_party(ssp) | get_default(prepared_by) %}
| {{ revision.last_modified.strftime('%Y-%m-%d') if revision.last_modified else '' }} | {{ revision.title }} | {{ revision.version }} | {{ revision_prepared_by.name }} |
{% endfor %}

<div class="pagebreak"></div>
