# sandbox_telemetry_parse — 2026-11-25 00:42:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2522734 lines=5590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5575 |
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
| `chromeBrowserPssKb` | {'int': 5575} |
| `chromeGpuPssKb` | {'int': 5575} |
| `chromeOtherPssKb` | {'int': 5575} |
| `chromeProcesses` | {'int': 5575} |
| `chromeProfiles` | {'int': 5575} |
| `chromeRendererMaxPssKb` | {'int': 5575} |
| `chromeRendererPssKb` | {'int': 5575} |
| `chromeRenderers` | {'int': 5575} |
| `chromeTabs` | {'int': 5575} |
| `chromeTabsProbedProfiles` | {'int': 5575} |
| `chromeUtilityPssKb` | {'int': 5575} |
| `desktopPssKb` | {'int': 5575} |
| `hostPssKb` | {'int': 5575} |
| `kind` | {'str': 5575} |
| `memAvailableKb` | {'int': 5575} |
| `memTotalKb` | {'int': 5575} |
| `otherPssKb` | {'int': 5575} |
| `processes` | {'int': 5575} |
| `pssFallbackProcesses` | {'int': 5575} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
