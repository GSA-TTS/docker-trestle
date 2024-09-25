
# Approvals

## System Owner
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set owner = ssp.system_characteristics.responsible_parties | parties_for_role("system-owner", ssp) | first_or_none %}
{{ owner.name | default('[Name]') }}
<br>
System Owner

## Information System Security Officer
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set isso = ssp.system_characteristics.responsible_parties | parties_for_role("information-system-security-officer", ssp) | first_or_none %}
{{ isso.name | default('[Name]') }}
<br>
Information System Security Officer

## Information System Security Manager
<br>
<br>
<br>
<br>
<div style="width:400px"><hr style="border-top:solid 2px #333 !important;color:#333;background-color:#333;" /></div>
{% set issm = ssp.system_characteristics.responsible_parties | parties_for_role("information-system-security-manager", ssp) | first_or_none %}
{{ issm.name | default('[Name]') }}
<br>
Information System Security Manager
