# 3 Information System Owner

The following individual is identified as the System Owner for this system.

{% for party in ssp.system_characteristics.responsible_parties | parties_for_role("system-owner", ssp) %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
