# sandbox_telemetry_parse — 2026-10-15 03:27:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=640854 lines=1422
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1417 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1417} |
| `chromeGpuPssKb` | {'int': 1417} |
| `chromeOtherPssKb` | {'int': 1417} |
| `chromeProcesses` | {'int': 1417} |
| `chromeProfiles` | {'int': 1417} |
| `chromeRendererMaxPssKb` | {'int': 1417} |
| `chromeRendererPssKb` | {'int': 1417} |
| `chromeRenderers` | {'int': 1417} |
| `chromeTabs` | {'int': 1417} |
| `chromeTabsProbedProfiles` | {'int': 1417} |
| `chromeUtilityPssKb` | {'int': 1417} |
| `desktopPssKb` | {'int': 1417} |
| `hostPssKb` | {'int': 1417} |
| `kind` | {'str': 1417} |
| `memAvailableKb` | {'int': 1417} |
| `memTotalKb` | {'int': 1417} |
| `otherPssKb` | {'int': 1417} |
| `processes` | {'int': 1417} |
| `pssFallbackProcesses` | {'int': 1417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
