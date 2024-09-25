
# Approvals

**System Owner**
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set owners = ssp.system_characteristics.responsible_parties | parties_for_role("system-owner", ssp) | list %}
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
{% set isso = ssp.system_characteristics.responsible_parties | parties_for_role("information-system-security-officer", ssp) | list %}
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
{% set issm = ssp.system_characteristics.responsible_parties | parties_for_role("information-system-security-manager", ssp) | list %}
{% if issm | count > 0 %}
{{ issm[0].name }}
{% else %}
[Name]
{% endif %}
<br>
Information System Security Manager

<div class="pagebreak"></div>
