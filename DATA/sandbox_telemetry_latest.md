# sandbox_telemetry_parse — 2026-11-19 18:10:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1386104 lines=3074
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3063 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3063} |
| `chromeGpuPssKb` | {'int': 3063} |
| `chromeOtherPssKb` | {'int': 3063} |
| `chromeProcesses` | {'int': 3063} |
| `chromeProfiles` | {'int': 3063} |
| `chromeRendererMaxPssKb` | {'int': 3063} |
| `chromeRendererPssKb` | {'int': 3063} |
| `chromeRenderers` | {'int': 3063} |
| `chromeTabs` | {'int': 3063} |
| `chromeTabsProbedProfiles` | {'int': 3063} |
| `chromeUtilityPssKb` | {'int': 3063} |
| `desktopPssKb` | {'int': 3063} |
| `hostPssKb` | {'int': 3063} |
| `kind` | {'str': 3063} |
| `memAvailableKb` | {'int': 3063} |
| `memTotalKb` | {'int': 3063} |
| `otherPssKb` | {'int': 3063} |
| `processes` | {'int': 3063} |
| `pssFallbackProcesses` | {'int': 3063} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
