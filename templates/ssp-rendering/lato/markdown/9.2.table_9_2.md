<!--
You can fill in additional rows for this table directly after `endfor`
-->

Table 9-2. System Assets

| Asset Type | Description of Function or Service Provided |
| ---------- | ------------------------------------------- |
{% for component in ssp.system_implementation.components %}
| {{ component.title }} | {{ component.description }} |
{% endfor %}
