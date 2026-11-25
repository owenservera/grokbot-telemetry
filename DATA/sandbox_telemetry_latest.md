# sandbox_telemetry_parse — 2026-11-25 02:02:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2544434 lines=5638
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5623 |
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
| `chromeBrowserPssKb` | {'int': 5623} |
| `chromeGpuPssKb` | {'int': 5623} |
| `chromeOtherPssKb` | {'int': 5623} |
| `chromeProcesses` | {'int': 5623} |
| `chromeProfiles` | {'int': 5623} |
| `chromeRendererMaxPssKb` | {'int': 5623} |
| `chromeRendererPssKb` | {'int': 5623} |
| `chromeRenderers` | {'int': 5623} |
| `chromeTabs` | {'int': 5623} |
| `chromeTabsProbedProfiles` | {'int': 5623} |
| `chromeUtilityPssKb` | {'int': 5623} |
| `desktopPssKb` | {'int': 5623} |
| `hostPssKb` | {'int': 5623} |
| `kind` | {'str': 5623} |
| `memAvailableKb` | {'int': 5623} |
| `memTotalKb` | {'int': 5623} |
| `otherPssKb` | {'int': 5623} |
| `processes` | {'int': 5623} |
| `pssFallbackProcesses` | {'int': 5623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
