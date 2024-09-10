# TTS Dockerized Compliance Trestle

This repository contains the source code for the `ghcr.io/gsa-tts/trestle` Docker image and OSCAL models to be used by that image.

## Image Use:

### General workflow:

1. [Download trestle image and run CLI](#pull-down-the-trestle-image-and-initialize-a-compliance-trestle-project)
1. [Create the files for a given SSPP](#create-control-statement-markdown-files)
1. Do in a loop:
    1. Edit control statements within markdown files
    1. [Assemble markdown contents into a provisional OSCAL SSP](#assemble-ssp-json-from-markdown)
    1. Edit other sections of the SSPP within the smaller json files
    1. [Check your progress](#check-control-status)
1. [Assemble everything into a final OSCAL SSP (TODO: within a CI workflow)](#final-ssp-assembly)
1. [Update non-OSCAL SSP sections](#update-non-oscal-ssp-files)
1. [Render a human-readable SSPP (TODO: within a CI workflow)](#render-ssp)

### Pull down the trestle image and initialize a compliance trestle project

Prerequisite: `$(pwd)/compliance` directory exists and is where you want to store all compliance artifacts

```
docker pull ghcr.io/gsa-tts/trestle
docker run -it --rm -v $(pwd)/compliance:/app/docs ghcr.io/gsa-tts/trestle bash
```

All other usage commands assume you are operating within the docker container.

### Create Control Statement Markdown Files

If you are using a profile that isn't [shipped with the image](#templates) you must [import it first](#import-profile-into-working-space)

If you are utilizing Component Definitions, you must [import](#import-component-definition-into-working-space) and/or [create](#create-component-definition) them first.

`generate-ssp-markdown -p PROFILE_NAME [-c COMP_DEF_NAMES]`


### Assemble SSP JSON from Markdown

`assemble-ssp-json -n SYSTEM_NAME [-c COMP_DEF_NAMES]`

This step will create `system-security-plans/SYSTEM_NAME/system-security-plan.json` as well as smaller JSON files within `system-security-plans/SYSTEM_NAME/system-security-plan/` for editing.

This script should be given the same list of Component Definitions that were passed to `generate-ssp-markdown`

### Check Control Status

The `control-status` script will output a quick report of all of the `Implementation Status` lines for your controls. For instance, to report on the status of all controls except those marked as `implemented`:

`control-status -i implemented`


### Final SSP Assembly

`trestle assemble -n SYSTEM_NAME system-security-plan`

### Update non-OSCAL SSP files.

Edit the files within `ssp-markdown` to populate data for the rendered SSP that can't yet be pulled from OSCAL.

*Hint:* Use [jinja templates](https://oscal-compass.github.io/compliance-trestle/trestle_author_jinja/#custom-jinja-tags) `md_clean_include` and `mdsection_include` to populate content from other existing documents your team is using.

### Render SSP

Output the SSP as a markdown file and html file, both within `ssp-render`

`render-ssp`

### Import profile into working space:

If you are using a `PROFILE_NAME` that does not ship with this docker container then you must first manually import it using:

`trestle import -f PROFILE_URL -o PROFILE_NAME`

Once that is done you can go back to the `generate-ssp-markdown` step

### Import Component Definition into working space:

To import a component that [ships with](#templates) this docker container: `copy-component -n COMPONENT_NAME`

To import a component that is available from a URL: `copy-component -n COMPONENT_NAME -u COMPONENT_URL`

### Create Component Definition

`create-component -n COMPONENT_NAME`

And then edit the created files to contain the component definition.

### Split SSP into manageable files

This step is automatically handled by the `assemble-ssp-json` script as long as that script is run from the trestle root.

`split-ssp -n SYSTEM_NAME`

### Templates:

The following templates are included in the Docker image:

#### profiles/lato

A profile representing the set of controls covered by a [GSA LATO](https://www.gsa.gov/system/files/Lightweight-Security-Authorization-Process-%28LATO%29%20%5BCIO-IT-Security-14-68-Rev-7%5D%2009-17-2021docx%20%281%29.pdf) SSPP.

#### component-definitions/cloud_gov

A Component Definition representing the Cloud.gov CRM.

#### component-definitions/devtools_cloud_gov

A set of testable best practices for running applications on cloud.gov. This component integrates with [Auditree](https://auditree.github.io/) and [c2p](https://github.com/oscal-compass/compliance-to-policy) to generate compliance results

#### catalogs/nist800-53r5

A copy of the full NIST 800-53 revision 5 catalog.

#### catalogs/lato

A resolved catalog of just the NIST 800-53r5 controls that are used by the LATO profile.

## Development

### Updating templates:

Run the trestle image locally through Docker Compose:

`docker compose run cli bash`

Utilize [compliance-trestle](https://oscal-compass.github.io/compliance-trestle/) commands within the `/app/templates` directory to make any changes that are required.

The `/app/docs` directory can be used as a scratch area for any temporary trestle tests.

### Updating the Docker image:

1. Make required changes to the Dockerfile
1. Push to GitHub and create a PR
1. On merging to main, a new docker image will be built, tagged, and pushed to the github container registry.

Each published image will be tagged with:

1. `latest`
1. The publication date: `YYYYMMDD`
1. The branch it was created on: `main`
1. The short git sha: `sha-c9f60e2`
