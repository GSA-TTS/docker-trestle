# 4 Authorizing Official

The Authorizing Official (AO) for this information system is identified below.

{% for party in ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "authorizing-official") %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
