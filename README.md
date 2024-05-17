# TTS Dockerized Compliance Trestle

This repository contains the source code for the `ghcr.io/gsa-tts/trestle` Docker image and OSCAL models to be used by that image.

## Updating the Docker image:

1. Make required changes to the Dockerfile
1. Build the image: `docker build -t ghcr.io/gsa-tts/trestle .`
1. Tag with a datestamp: `docker tag ghcr.io/gsa-tts/trestle ghcr.io/gsa-tts/trestle:YYYYMMDD`
1. Push the new tag to Docker Hub: `docker push ghcr.io/gsa-tts/trestle:YYYYMMDD`

## Templates:

The following templates are included in the Docker image:

### profiles/lato

A profile representing the set of controls covered by a [GSA LATO]() SSPP.

### catalogs/nist800-53r5

A copy of the full NIST 800-53 revision 5 catalog.

### catalogs/lato

A resolved catalog of just the NIST 800-53r5 controls that are used by the LATO profile.

## Updating templates:

Run the trestle image locally through Docker Compose:

`docker compose run cli bash`

Utilize [compliance-trestle]() commands within the `/app/templates` directory to make any changes that are required.

The `/app/working_dir` directory can be used as a scratch area for any temporary trestle tests.
