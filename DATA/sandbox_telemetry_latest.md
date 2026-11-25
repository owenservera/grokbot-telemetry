# sandbox_telemetry_parse — 2026-11-25 14:29:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2793611 lines=6189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6174 |
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
| `chromeBrowserPssKb` | {'int': 6174} |
| `chromeGpuPssKb` | {'int': 6174} |
| `chromeOtherPssKb` | {'int': 6174} |
| `chromeProcesses` | {'int': 6174} |
| `chromeProfiles` | {'int': 6174} |
| `chromeRendererMaxPssKb` | {'int': 6174} |
| `chromeRendererPssKb` | {'int': 6174} |
| `chromeRenderers` | {'int': 6174} |
| `chromeTabs` | {'int': 6174} |
| `chromeTabsProbedProfiles` | {'int': 6174} |
| `chromeUtilityPssKb` | {'int': 6174} |
| `desktopPssKb` | {'int': 6174} |
| `hostPssKb` | {'int': 6174} |
| `kind` | {'str': 6174} |
| `memAvailableKb` | {'int': 6174} |
| `memTotalKb` | {'int': 6174} |
| `otherPssKb` | {'int': 6174} |
| `processes` | {'int': 6174} |
| `pssFallbackProcesses` | {'int': 6174} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
