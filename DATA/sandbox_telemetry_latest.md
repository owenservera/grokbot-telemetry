# sandbox_telemetry_parse — 2026-11-11 10:59:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1596445 lines=3536
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3527 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3527} |
| `chromeGpuPssKb` | {'int': 3527} |
| `chromeOtherPssKb` | {'int': 3527} |
| `chromeProcesses` | {'int': 3527} |
| `chromeProfiles` | {'int': 3527} |
| `chromeRendererMaxPssKb` | {'int': 3527} |
| `chromeRendererPssKb` | {'int': 3527} |
| `chromeRenderers` | {'int': 3527} |
| `chromeTabs` | {'int': 3527} |
| `chromeTabsProbedProfiles` | {'int': 3527} |
| `chromeUtilityPssKb` | {'int': 3527} |
| `desktopPssKb` | {'int': 3527} |
| `hostPssKb` | {'int': 3527} |
| `kind` | {'str': 3527} |
| `memAvailableKb` | {'int': 3527} |
| `memTotalKb` | {'int': 3527} |
| `otherPssKb` | {'int': 3527} |
| `processes` | {'int': 3527} |
| `pssFallbackProcesses` | {'int': 3527} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
