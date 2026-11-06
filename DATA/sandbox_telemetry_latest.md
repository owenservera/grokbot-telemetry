# sandbox_telemetry_parse — 2026-11-06 13:41:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=34010 lines=81
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 74 |
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
| `chromeBrowserPssKb` | {'int': 74} |
| `chromeGpuPssKb` | {'int': 74} |
| `chromeOtherPssKb` | {'int': 74} |
| `chromeProcesses` | {'int': 74} |
| `chromeProfiles` | {'int': 74} |
| `chromeRendererMaxPssKb` | {'int': 74} |
| `chromeRendererPssKb` | {'int': 74} |
| `chromeRenderers` | {'int': 74} |
| `chromeTabs` | {'int': 74} |
| `chromeTabsProbedProfiles` | {'int': 74} |
| `chromeUtilityPssKb` | {'int': 74} |
| `desktopPssKb` | {'int': 74} |
| `hostPssKb` | {'int': 74} |
| `kind` | {'str': 74} |
| `memAvailableKb` | {'int': 74} |
| `memTotalKb` | {'int': 74} |
| `otherPssKb` | {'int': 74} |
| `processes` | {'int': 74} |
| `pssFallbackProcesses` | {'int': 74} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
