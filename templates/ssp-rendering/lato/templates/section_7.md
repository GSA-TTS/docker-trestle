{% macro system_status(state_value, display_text) -%}
  {{"**" if ssp.system_characteristics.status.state.value == state_value}}{{display_text}}{{"**" if ssp.system_characteristics.status.state.value == state_value}}
{%- endmacro %}
# 7 Information System Operational Status

The system is currently in the life-cycle phase noted in the following table.

Table 7-1. System Operational Status

| System Operational Status | Status Description |
| ------------------------- | ------------------ |
| {{ system_status('operational', 'Operational') }} | {{ system_status('operational', 'The system is operating and in production') }} |
| {{ system_status('under-development', 'Under Development') }} | {{ system_status('under-development', 'The system is being designed, developed, or implemented.') }} |
| {{ system_status('under-major-modification', 'Major Modification') }} | {{ system_status('under-development', 'The system is undergoing a major change, development, or transition.') }} |
| {{ system_status('other', 'Other') }} | Explain: {{ "Edit the section_7.md template to explain the status" if ssp.system_characteristics.status.state.value == "other" else "" }} |
