# sandbox_telemetry_parse — 2026-11-06 13:22:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=27225 lines=66
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 59 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 59} |
| `chromeGpuPssKb` | {'int': 59} |
| `chromeOtherPssKb` | {'int': 59} |
| `chromeProcesses` | {'int': 59} |
| `chromeProfiles` | {'int': 59} |
| `chromeRendererMaxPssKb` | {'int': 59} |
| `chromeRendererPssKb` | {'int': 59} |
| `chromeRenderers` | {'int': 59} |
| `chromeTabs` | {'int': 59} |
| `chromeTabsProbedProfiles` | {'int': 59} |
| `chromeUtilityPssKb` | {'int': 59} |
| `desktopPssKb` | {'int': 59} |
| `hostPssKb` | {'int': 59} |
| `kind` | {'str': 59} |
| `memAvailableKb` | {'int': 59} |
| `memTotalKb` | {'int': 59} |
| `otherPssKb` | {'int': 59} |
| `processes` | {'int': 59} |
| `pssFallbackProcesses` | {'int': 59} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
