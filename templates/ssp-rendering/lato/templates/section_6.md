# 6 Other Designated Contacts

The individual(s) identified below possess in-depth knowledge of this system and/or its functions and operation.

{% for party in ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "system-poc-technical") %}
{% include "ssp-render/templates/partials/poc_contact_table.md" +%}
{% endfor +%}
