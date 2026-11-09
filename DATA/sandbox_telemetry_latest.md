# sandbox_telemetry_parse — 2026-11-09 07:54:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=561128 lines=1248
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1239 |
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
| `chromeBrowserPssKb` | {'int': 1239} |
| `chromeGpuPssKb` | {'int': 1239} |
| `chromeOtherPssKb` | {'int': 1239} |
| `chromeProcesses` | {'int': 1239} |
| `chromeProfiles` | {'int': 1239} |
| `chromeRendererMaxPssKb` | {'int': 1239} |
| `chromeRendererPssKb` | {'int': 1239} |
| `chromeRenderers` | {'int': 1239} |
| `chromeTabs` | {'int': 1239} |
| `chromeTabsProbedProfiles` | {'int': 1239} |
| `chromeUtilityPssKb` | {'int': 1239} |
| `desktopPssKb` | {'int': 1239} |
| `hostPssKb` | {'int': 1239} |
| `kind` | {'str': 1239} |
| `memAvailableKb` | {'int': 1239} |
| `memTotalKb` | {'int': 1239} |
| `otherPssKb` | {'int': 1239} |
| `processes` | {'int': 1239} |
| `pssFallbackProcesses` | {'int': 1239} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
