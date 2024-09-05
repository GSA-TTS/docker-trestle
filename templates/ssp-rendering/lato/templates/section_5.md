# 5 Assignment of Security Responsibility

The Information System Security Manager (ISSM) has been appointed and is identified below.

{% for party in ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "information-system-security-manager") %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}

The Information System Security Officer (ISSO) has been appointed and is identified below.

{% for party in ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "information-system-security-officer") %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
