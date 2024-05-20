# TTS Dockerized Compliance Trestle

This repository contains the source code for the `ghcr.io/gsa-tts/trestle` Docker image and OSCAL models to be used by that image.

## Image Use:

### Pull down the trestle image and initialize a compliance trestle project

Prerequisite: `$(pwd)/compliance` directory exists and is where you want to store all compliance artifacts

```
docker pull ghcr.io/gsa-tts/trestle
docker run -it --rm -v $(pwd)/compliance:/app/docs ghcr.io/gsa-tts/trestle bash
```

All other usage commands assume you are operating within the docker container.

### Create Control Statement Markdown Files

`generate-ssp-markdown PROFILE_NAME`

### Import profile into working space:

If you are using a `PROFILE_NAME` that does not ship with this docker container then you must first manually import it using:

`trestle import -f PROFILE_URL -o PROFILE_NAME`

Once that is done you can go back to the `generate-ssp-markdown` step

### Templates:

The following templates are included in the Docker image:

#### profiles/lato

A profile representing the set of controls covered by a [GSA LATO](https://www.gsa.gov/system/files/Lightweight-Security-Authorization-Process-%28LATO%29%20%5BCIO-IT-Security-14-68-Rev-7%5D%2009-17-2021docx%20%281%29.pdf) SSPP.

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
1. Build the image: `docker build -t ghcr.io/gsa-tts/trestle .`
1. Tag with a datestamp: `docker tag ghcr.io/gsa-tts/trestle ghcr.io/gsa-tts/trestle:YYYYMMDD`
1. Push the new tag to Docker Hub: `docker push ghcr.io/gsa-tts/trestle:YYYYMMDD`
