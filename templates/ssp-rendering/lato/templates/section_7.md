# 7 Information System Operational Status

The system is currently in the life-cycle phase noted in the following table.

Table 7-1. System Operational Status

| System Operational Status | Status Description |
| ------------------------- | ------------------ |
| {{"☒" if ssp.system_characteristics.status.state.value == "operational" else "☐"}} Operational | The system is operating and in production |
| {{"☒" if ssp.system_characteristics.status.state.value == "under-development" else "☐"}} Under Development | The system is being designed, developed, or implemented. |
| {{"☒" if ssp.system_characteristics.status.state.value == "under-major-modification" else "☐"}} Major Modification | The system is undergoing a major change, development, or transition. |
| {{"☒" if ssp.system_characteristics.status.state.value == "other" else "☐"}} Other | Explain: {{ "Edit the section_7.md template to explain the status" if ssp.system_characteristics.status.state.value == "other" else "" }} |
