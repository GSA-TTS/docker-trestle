<table>
<tbody>
<tr>
<th scope="row">Name</th><td>{{ party.name }}</td>
</tr>
<tr>
<th scope="row">Title</th><td>{{ control_interface.get_prop(party, 'title') }}</td>
</tr>
<tr>
{% set organization = ssp_interface.get_party_by_uuid(ssp_interface.first_array_entry(party.member_of_organizations)) %}
<th scope="row">Organization</th><td>{{ ssp_interface.safe_retrieval(organization, "name") }}</td>
</tr>
<tr>
<th scope="row">Address</th><td>
{% if organization and organization.addresses %}
{% set address = ssp_interface.first_array_entry(organization.addresses) %}
{% if address %}
{{ ssp_interface.safe_retrieval(address, 'addr_lines', []) | join(' ') }} {{ address.city }}, {{ address.state }} {{ address.postal_code }}
{% endif %}
{% endif %}
</td>
</tr>
<tr>
<th scope="row">Phone Number</th><td>{{ ssp_interface.first_array_entry(party.telephone_numbers, "number") }}</td>
</tr>
<tr>
<th scope="row">Email Address</th><td>{{ ssp_interface.first_array_entry(party.email_addresses, "__root__") }}</td>
</tr>
</tbody>
</table>
