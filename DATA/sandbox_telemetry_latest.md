# sandbox_telemetry_parse — 2026-11-06 21:08:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=169467 lines=382
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 373 |
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
| `chromeBrowserPssKb` | {'int': 373} |
| `chromeGpuPssKb` | {'int': 373} |
| `chromeOtherPssKb` | {'int': 373} |
| `chromeProcesses` | {'int': 373} |
| `chromeProfiles` | {'int': 373} |
| `chromeRendererMaxPssKb` | {'int': 373} |
| `chromeRendererPssKb` | {'int': 373} |
| `chromeRenderers` | {'int': 373} |
| `chromeTabs` | {'int': 373} |
| `chromeTabsProbedProfiles` | {'int': 373} |
| `chromeUtilityPssKb` | {'int': 373} |
| `desktopPssKb` | {'int': 373} |
| `hostPssKb` | {'int': 373} |
| `kind` | {'str': 373} |
| `memAvailableKb` | {'int': 373} |
| `memTotalKb` | {'int': 373} |
| `otherPssKb` | {'int': 373} |
| `processes` | {'int': 373} |
| `pssFallbackProcesses` | {'int': 373} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
