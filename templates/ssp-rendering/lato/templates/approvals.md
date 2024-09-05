
# Approvals

**System Owner**
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set owners = ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "system-owner") | list %}
{% if owners | count > 0 %}
{{ owners[0].name }}
{% else %}
[Name]
{% endif %}
<br>
System Owner

**Information System Security Officer**
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set isso = ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "information-system-security-officer") | list %}
{% if isso | count > 0 %}
{{ isso[0].name }}
{% else %}
[Name]
{% endif %}
<br>
Information System Security Officer

**Information System Security Manager**
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set issm = ssp_interface.get_parties_for_role(ssp.system_characteristics.responsible_parties, "information-system-security-manager") | list %}
{% if issm | count > 0 %}
{{ issm[0].name }}
{% else %}
[Name]
{% endif %}
<br>
Information System Security Manager

<div class="pagebreak"></div>
