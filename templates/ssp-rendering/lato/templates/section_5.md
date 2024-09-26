# 5 Assignment of Security Responsibility

The Information System Security Manager (ISSM) has been appointed and is identified below.

{% for party in ssp.system_characteristics.responsible_parties | parties_for_role("information-system-security-manager", ssp) %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}

The Information System Security Officer (ISSO) has been appointed and is identified below.

{% for party in ssp.system_characteristics.responsible_parties | parties_for_role("information-system-security-officer", ssp) %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
