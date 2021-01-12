# charlatan

<details>

* Version: 0.4.0
* GitHub: https://github.com/ropensci/charlatan
* Source code: https://github.com/cran/charlatan
* Date/Publication: 2020-01-24 07:10:03 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "charlatan")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      ── FAILURE (test-missing.R:19:3): MissingDataProvider works ────────────────────
      identical(letters2, letters3) is not FALSE

      `actual`:   TRUE
      `expected`: FALSE

      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (2)

      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-missing.R:19:3): MissingDataProvider works

      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 617 ]
      Error: Test failures
      Execution halted
    ```

# gtfs2gps

<details>

* Version: 1.3-2
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2020-11-05 17:30:12 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "gtfs2gps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       10. │         └─future:::resolve.list(...)
       11. │           ├─future::value(obj, stdout = FALSE, signal = FALSE)
       12. │           └─future:::value.Future(obj, stdout = FALSE, signal = FALSE)
       13. │             ├─future::result(future)
       14. │             └─future:::result.MulticoreFuture(future)
       15. └─data.table::rbindlist(.)

      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      ERROR (test_gtfs2gps.R:71:5): gtfs2gps

      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 158 ]
      Error: Test failures
      Execution halted
    ```
