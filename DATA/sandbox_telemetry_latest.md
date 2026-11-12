# sandbox_telemetry_parse — 2026-11-12 13:31:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2150818 lines=4761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4752 |
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
| `chromeBrowserPssKb` | {'int': 4752} |
| `chromeGpuPssKb` | {'int': 4752} |
| `chromeOtherPssKb` | {'int': 4752} |
| `chromeProcesses` | {'int': 4752} |
| `chromeProfiles` | {'int': 4752} |
| `chromeRendererMaxPssKb` | {'int': 4752} |
| `chromeRendererPssKb` | {'int': 4752} |
| `chromeRenderers` | {'int': 4752} |
| `chromeTabs` | {'int': 4752} |
| `chromeTabsProbedProfiles` | {'int': 4752} |
| `chromeUtilityPssKb` | {'int': 4752} |
| `desktopPssKb` | {'int': 4752} |
| `hostPssKb` | {'int': 4752} |
| `kind` | {'str': 4752} |
| `memAvailableKb` | {'int': 4752} |
| `memTotalKb` | {'int': 4752} |
| `otherPssKb` | {'int': 4752} |
| `processes` | {'int': 4752} |
| `pssFallbackProcesses` | {'int': 4752} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
