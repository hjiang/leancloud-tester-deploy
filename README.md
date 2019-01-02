## Introduction

This is used for deploying [leancloud-tester](https://github.com/hjiang/leancloud-tester)
with the corresponding [API service](https://github.com/hjiang/leancloud-tester-api).

## Running

To run this with `docker-compose`, you need to create `/.env` and define the
following variables:

- `STORAGE_APP_ID`
- `STORAGE_APP_KEY`

More variables will be added as tests are added.

## Misc

The [web frontend](https://github.com/hjiang/leancloud-tester-web) is not included.
It should be deployed separately.
