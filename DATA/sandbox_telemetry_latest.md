# sandbox_telemetry_parse — 2026-11-25 07:48:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2658377 lines=5890
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5875 |
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
| `chromeBrowserPssKb` | {'int': 5875} |
| `chromeGpuPssKb` | {'int': 5875} |
| `chromeOtherPssKb` | {'int': 5875} |
| `chromeProcesses` | {'int': 5875} |
| `chromeProfiles` | {'int': 5875} |
| `chromeRendererMaxPssKb` | {'int': 5875} |
| `chromeRendererPssKb` | {'int': 5875} |
| `chromeRenderers` | {'int': 5875} |
| `chromeTabs` | {'int': 5875} |
| `chromeTabsProbedProfiles` | {'int': 5875} |
| `chromeUtilityPssKb` | {'int': 5875} |
| `desktopPssKb` | {'int': 5875} |
| `hostPssKb` | {'int': 5875} |
| `kind` | {'str': 5875} |
| `memAvailableKb` | {'int': 5875} |
| `memTotalKb` | {'int': 5875} |
| `otherPssKb` | {'int': 5875} |
| `processes` | {'int': 5875} |
| `pssFallbackProcesses` | {'int': 5875} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
