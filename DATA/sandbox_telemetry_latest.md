# sandbox_telemetry_parse — 2026-11-25 17:10:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2846072 lines=6305
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6290 |
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
| `chromeBrowserPssKb` | {'int': 6290} |
| `chromeGpuPssKb` | {'int': 6290} |
| `chromeOtherPssKb` | {'int': 6290} |
| `chromeProcesses` | {'int': 6290} |
| `chromeProfiles` | {'int': 6290} |
| `chromeRendererMaxPssKb` | {'int': 6290} |
| `chromeRendererPssKb` | {'int': 6290} |
| `chromeRenderers` | {'int': 6290} |
| `chromeTabs` | {'int': 6290} |
| `chromeTabsProbedProfiles` | {'int': 6290} |
| `chromeUtilityPssKb` | {'int': 6290} |
| `desktopPssKb` | {'int': 6290} |
| `hostPssKb` | {'int': 6290} |
| `kind` | {'str': 6290} |
| `memAvailableKb` | {'int': 6290} |
| `memTotalKb` | {'int': 6290} |
| `otherPssKb` | {'int': 6290} |
| `processes` | {'int': 6290} |
| `pssFallbackProcesses` | {'int': 6290} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
