# sandbox_telemetry_parse — 2026-11-09 23:03:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=877470 lines=1947
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1938 |
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
| `chromeBrowserPssKb` | {'int': 1938} |
| `chromeGpuPssKb` | {'int': 1938} |
| `chromeOtherPssKb` | {'int': 1938} |
| `chromeProcesses` | {'int': 1938} |
| `chromeProfiles` | {'int': 1938} |
| `chromeRendererMaxPssKb` | {'int': 1938} |
| `chromeRendererPssKb` | {'int': 1938} |
| `chromeRenderers` | {'int': 1938} |
| `chromeTabs` | {'int': 1938} |
| `chromeTabsProbedProfiles` | {'int': 1938} |
| `chromeUtilityPssKb` | {'int': 1938} |
| `desktopPssKb` | {'int': 1938} |
| `hostPssKb` | {'int': 1938} |
| `kind` | {'str': 1938} |
| `memAvailableKb` | {'int': 1938} |
| `memTotalKb` | {'int': 1938} |
| `otherPssKb` | {'int': 1938} |
| `processes` | {'int': 1938} |
| `pssFallbackProcesses` | {'int': 1938} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
