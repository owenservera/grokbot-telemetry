# sandbox_telemetry_parse — 2026-10-06 03:22:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=121946 lines=272
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 267 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 267} |
| `chromeGpuPssKb` | {'int': 267} |
| `chromeOtherPssKb` | {'int': 267} |
| `chromeProcesses` | {'int': 267} |
| `chromeProfiles` | {'int': 267} |
| `chromeRendererMaxPssKb` | {'int': 267} |
| `chromeRendererPssKb` | {'int': 267} |
| `chromeRenderers` | {'int': 267} |
| `chromeTabs` | {'int': 267} |
| `chromeTabsProbedProfiles` | {'int': 267} |
| `chromeUtilityPssKb` | {'int': 267} |
| `desktopPssKb` | {'int': 267} |
| `hostPssKb` | {'int': 267} |
| `kind` | {'str': 267} |
| `memAvailableKb` | {'int': 267} |
| `memTotalKb` | {'int': 267} |
| `otherPssKb` | {'int': 267} |
| `processes` | {'int': 267} |
| `pssFallbackProcesses` | {'int': 267} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
