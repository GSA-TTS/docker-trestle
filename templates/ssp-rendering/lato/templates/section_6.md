# 6 Other Designated Contacts

The individual(s) identified below possess in-depth knowledge of this system and/or its functions and operation.

{% for party in ssp.system_characteristics.responsible_parties | parties_for_role("system-poc-technical", ssp) %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
