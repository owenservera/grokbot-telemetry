# sandbox_telemetry_parse — 2026-11-25 05:48:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2613611 lines=5791
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5776 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 5776} |
| `chromeGpuPssKb` | {'int': 5776} |
| `chromeOtherPssKb` | {'int': 5776} |
| `chromeProcesses` | {'int': 5776} |
| `chromeProfiles` | {'int': 5776} |
| `chromeRendererMaxPssKb` | {'int': 5776} |
| `chromeRendererPssKb` | {'int': 5776} |
| `chromeRenderers` | {'int': 5776} |
| `chromeTabs` | {'int': 5776} |
| `chromeTabsProbedProfiles` | {'int': 5776} |
| `chromeUtilityPssKb` | {'int': 5776} |
| `desktopPssKb` | {'int': 5776} |
| `hostPssKb` | {'int': 5776} |
| `kind` | {'str': 5776} |
| `memAvailableKb` | {'int': 5776} |
| `memTotalKb` | {'int': 5776} |
| `otherPssKb` | {'int': 5776} |
| `processes` | {'int': 5776} |
| `pssFallbackProcesses` | {'int': 5776} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
