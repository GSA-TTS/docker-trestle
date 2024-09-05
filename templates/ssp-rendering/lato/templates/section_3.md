# 3 Information System Owner

The following individual is identified as the System Owner for this system.

{% for party in ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "system-owner") %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
