# sandbox_telemetry_parse — 2026-11-12 13:51:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2158066 lines=4777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4768 |
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
| `chromeBrowserPssKb` | {'int': 4768} |
| `chromeGpuPssKb` | {'int': 4768} |
| `chromeOtherPssKb` | {'int': 4768} |
| `chromeProcesses` | {'int': 4768} |
| `chromeProfiles` | {'int': 4768} |
| `chromeRendererMaxPssKb` | {'int': 4768} |
| `chromeRendererPssKb` | {'int': 4768} |
| `chromeRenderers` | {'int': 4768} |
| `chromeTabs` | {'int': 4768} |
| `chromeTabsProbedProfiles` | {'int': 4768} |
| `chromeUtilityPssKb` | {'int': 4768} |
| `desktopPssKb` | {'int': 4768} |
| `hostPssKb` | {'int': 4768} |
| `kind` | {'str': 4768} |
| `memAvailableKb` | {'int': 4768} |
| `memTotalKb` | {'int': 4768} |
| `otherPssKb` | {'int': 4768} |
| `processes` | {'int': 4768} |
| `pssFallbackProcesses` | {'int': 4768} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
