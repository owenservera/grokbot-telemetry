# sandbox_telemetry_parse — 2026-11-25 06:40:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2634412 lines=5837
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5822 |
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
| `chromeBrowserPssKb` | {'int': 5822} |
| `chromeGpuPssKb` | {'int': 5822} |
| `chromeOtherPssKb` | {'int': 5822} |
| `chromeProcesses` | {'int': 5822} |
| `chromeProfiles` | {'int': 5822} |
| `chromeRendererMaxPssKb` | {'int': 5822} |
| `chromeRendererPssKb` | {'int': 5822} |
| `chromeRenderers` | {'int': 5822} |
| `chromeTabs` | {'int': 5822} |
| `chromeTabsProbedProfiles` | {'int': 5822} |
| `chromeUtilityPssKb` | {'int': 5822} |
| `desktopPssKb` | {'int': 5822} |
| `hostPssKb` | {'int': 5822} |
| `kind` | {'str': 5822} |
| `memAvailableKb` | {'int': 5822} |
| `memTotalKb` | {'int': 5822} |
| `otherPssKb` | {'int': 5822} |
| `processes` | {'int': 5822} |
| `pssFallbackProcesses` | {'int': 5822} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
