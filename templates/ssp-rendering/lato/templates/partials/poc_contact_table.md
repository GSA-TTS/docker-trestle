{% set organization = party.member_of_organizations | first_or_none | get_party(ssp) %}
{% set address = organization.addresses | first_or_none %}
|   |   |
| - | - |
| **Name** | {{ party.name }} |
| **Title** | {{ control_interface.get_prop(party, 'title') }} |
| **Organization** | {{ organization.name }} |
{% if address %}
| **Address** | {{ address.addr_lines | as_list | join(' ') }} {{ address.city }}, {{ address.state }} {{ address.postal_code }} |
{% else %}
| **Address** | |
{% endif %}
| **Phone Number** | {{ (party.telephone_numbers | first_or_none).number }} |
| **Email Address** | {{ (party.email_addresses | first_or_none).__root__ }} |
