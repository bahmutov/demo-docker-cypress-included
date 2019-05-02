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
```
