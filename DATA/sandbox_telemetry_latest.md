# sandbox_telemetry_parse — 2026-11-25 09:33:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2695480 lines=5972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5957 |
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
| `chromeBrowserPssKb` | {'int': 5957} |
| `chromeGpuPssKb` | {'int': 5957} |
| `chromeOtherPssKb` | {'int': 5957} |
| `chromeProcesses` | {'int': 5957} |
| `chromeProfiles` | {'int': 5957} |
| `chromeRendererMaxPssKb` | {'int': 5957} |
| `chromeRendererPssKb` | {'int': 5957} |
| `chromeRenderers` | {'int': 5957} |
| `chromeTabs` | {'int': 5957} |
| `chromeTabsProbedProfiles` | {'int': 5957} |
| `chromeUtilityPssKb` | {'int': 5957} |
| `desktopPssKb` | {'int': 5957} |
| `hostPssKb` | {'int': 5957} |
| `kind` | {'str': 5957} |
| `memAvailableKb` | {'int': 5957} |
| `memTotalKb` | {'int': 5957} |
| `otherPssKb` | {'int': 5957} |
| `processes` | {'int': 5957} |
| `pssFallbackProcesses` | {'int': 5957} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
