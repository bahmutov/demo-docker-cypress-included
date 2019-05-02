# demo-docker-cypress-included
> Demo running complete Docker image cypress/included

## Run tests

```shell
$ ./cy-run.sh
```

See script [cy-run.sh](cy-run.sh) for the exact `docker run ...` command.

```text
$ ./cy-run.sh
Running Cypress e2e tests headlessly

==============================================================================

  (Run Starting)

  ┌──────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    3.2.0                                                        │
  │ Browser:    Electron 59 (headless)                                       │
  │ Specs:      1 found (spec.js)                                            │
  └──────────────────────────────────────────────────────────────────────────┘

──────────────────────────────────────────────────────────────────────────────

  Running: spec.js...                                                                      (1 of 1)


  Cypress TodoMVC test
    ✓ adds 2 todos (1351ms)

  ...
```

## See help

- specify entrypoint to be just `cypress`
- pass any arguments after the image name

Example: shows help

```shell
$ docker run -it -v $PWD:/e2e -w /e2e --entrypoint=cypress cypress/included:3.2.0 help
```

## Cypress open

Follow [Running GUI applications using Docker for Mac](https://sourabhbajaj.com/blog/2017/02/07/gui-applications-docker-mac/) and install [XQuartz](https://www.xquartz.org) X11 server. Then see [cy-open.sh](cy-open.sh) for Docker run command that forwards XVFB events from Cypress to the X11 server running on the host machine. You should see Cypress Test Runner open and work fine.

![Cypress GUI shown in X11 server](images/cy-open.png)
