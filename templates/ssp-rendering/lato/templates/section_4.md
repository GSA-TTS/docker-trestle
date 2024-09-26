# 4 Authorizing Official

The Authorizing Official (AO) for this information system is identified below.

{% for party in ssp.system_characteristics.responsible_parties | parties_for_role("authorizing-official", ssp) %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
