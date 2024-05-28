# OSCAL Reference Doc

A quick cheat-sheet of relevant fields within the SSP. This is not exhaustive and some SSPPs will likely need other fields that are not included in this document.

## SSP

The [SSP model](https://pages.nist.gov/OSCAL/resources/concepts/layer/implementation/ssp/) is where all information for the eventual System Security & Privacy Plan is stored.

For docker-trestle, the `control-implementation` section is maintained and edited within the `control-statements` markdown files. The other sections are edited in JSON files within `system-security-plans/SYSTEM_NAME/system-security-plan/`

### Metadata

`metadata.json`

> Metadata syntax is identical and required in all OSCAL models. It includes information such as the document's title, publication version, publication date, and OSCAL version. Metadata is also used to define roles, parties (people, teams and organizations), and locations.

| Field | Description |
| ----- | ----------- |
| `title` | Title of the SSPP document |
| `last-modified` | Do not edit - automatically generated timestamp |
| `version` | Version of the SSP document. Revise whenever submitting final doc for approvals |
| `oscal-version` | Version of OSCAL in use. trestle currently supports `1.0.4` |

### System Characteristics

`system-characteristics.json`

>Represents attributes of the system, such as its name, description, models, and information processed.

| Field | Description |
| ----- | ----------- |
| `system-ids` | Unique identifiers for the entire system. These are likely provided to you by your ISSO and come from the GRC system. |
| `system-name` | Full name of the system. |
| `description` | Overall summary of the system. What it does, where it lives, what types of data are processed. |
| `security-sensitivity-level` | Overal FIPS-199 impact level of the system. High/Moderate/Low |
| `system-information` | Details about all of the NIST 800-60 information types stored, processed, |
| `security-impact-level` | The high-water mark for impact level for each of confidentiality, integrity, and availability. |
| `status` | The system lifecycle stage. Likely to either be `operational` or `under-development` |
| `authorization-boundary.description` | A description of the authorization boundary |
| `authorization-boundary.diagrams` | A list of supporting diagrams for the authoriation boundary |
| `network-architecture` | A description of the system's network architecture, optionally supplemented by diagrams that illustrate the network architecture. |
| `data-flow` | A description of the logical flow of information within the system and across its boundaries, optionally supplemented by diagrams that illustrate these flows. |
| `responsible-parties` | A reference to a set of organizations or persons that have responsibility for performing a referenced role in the context of the containing object. |


### System Implementation

`system-implementation.json`

> Represents relevant information about the system's deployment, including user roles, interconnections, services, and system inventory.

| Field | Description |
| ----- | ----------- |
| `users` | A type of user that interacts with the system based on an associated role. [More info on object fields](https://pages.nist.gov/OSCAL-Reference/models/v1.0.4/system-security-plan/json-reference/#/system-security-plan/system-implementation/users) |
| `components` | A defined component that can be part of an implemented system. [More info on object fields](https://pages.nist.gov/OSCAL-Reference/models/v1.0.4/system-security-plan/json-reference/#/system-security-plan/system-implementation/components) |
| `leveraged-authorizations` | A description of another authorized system from which this system inherits capabilities that satisfy security requirements. Another term for this concept is a common control provider. [More info on object fields](https://pages.nist.gov/OSCAL-Reference/models/v1.0.4/system-security-plan/json-reference/#/system-security-plan/system-implementation/leveraged-authorizations) |
