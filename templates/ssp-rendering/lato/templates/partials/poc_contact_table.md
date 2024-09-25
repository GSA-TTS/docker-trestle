<table>
<tbody>
<tr>
<th scope="row">Name</th><td>{{ party.name }}</td>
</tr>
<tr>
<th scope="row">Title</th><td>{{ control_interface.get_prop(party, 'title') }}</td>
</tr>
<tr>
{% set organization = party.member_of_organizations | first_or_none | get_party(ssp) %}
<th scope="row">Organization</th><td>{{ organization.name }}</td>
</tr>
<tr>
<th scope="row">Address</th><td>
{% set address = organization.addresses | first_or_none %}
{% if address %}
{{ address.addr_lines | as_list | join(' ') }} {{ address.city }}, {{ address.state }} {{ address.postal_code }}
{% endif %}
</td>
</tr>
<tr>
<th scope="row">Phone Number</th><td>{{ (party.telephone_numbers | first_or_none).number }}</td>
</tr>
<tr>
<th scope="row">Email Address</th><td>{{ (party.email_addresses | first_or_none).__root__ }}</td>
</tr>
</tbody>
</table>
