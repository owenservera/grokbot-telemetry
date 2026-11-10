# sandbox_telemetry_parse — 2026-11-10 22:27:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1354472 lines=3001
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2992 |
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
| `chromeBrowserPssKb` | {'int': 2992} |
| `chromeGpuPssKb` | {'int': 2992} |
| `chromeOtherPssKb` | {'int': 2992} |
| `chromeProcesses` | {'int': 2992} |
| `chromeProfiles` | {'int': 2992} |
| `chromeRendererMaxPssKb` | {'int': 2992} |
| `chromeRendererPssKb` | {'int': 2992} |
| `chromeRenderers` | {'int': 2992} |
| `chromeTabs` | {'int': 2992} |
| `chromeTabsProbedProfiles` | {'int': 2992} |
| `chromeUtilityPssKb` | {'int': 2992} |
| `desktopPssKb` | {'int': 2992} |
| `hostPssKb` | {'int': 2992} |
| `kind` | {'str': 2992} |
| `memAvailableKb` | {'int': 2992} |
| `memTotalKb` | {'int': 2992} |
| `otherPssKb` | {'int': 2992} |
| `processes` | {'int': 2992} |
| `pssFallbackProcesses` | {'int': 2992} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
