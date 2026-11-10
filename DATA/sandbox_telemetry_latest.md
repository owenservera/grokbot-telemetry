# sandbox_telemetry_parse — 2026-11-10 21:49:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1338632 lines=2966
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2957 |
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
| `chromeBrowserPssKb` | {'int': 2957} |
| `chromeGpuPssKb` | {'int': 2957} |
| `chromeOtherPssKb` | {'int': 2957} |
| `chromeProcesses` | {'int': 2957} |
| `chromeProfiles` | {'int': 2957} |
| `chromeRendererMaxPssKb` | {'int': 2957} |
| `chromeRendererPssKb` | {'int': 2957} |
| `chromeRenderers` | {'int': 2957} |
| `chromeTabs` | {'int': 2957} |
| `chromeTabsProbedProfiles` | {'int': 2957} |
| `chromeUtilityPssKb` | {'int': 2957} |
| `desktopPssKb` | {'int': 2957} |
| `hostPssKb` | {'int': 2957} |
| `kind` | {'str': 2957} |
| `memAvailableKb` | {'int': 2957} |
| `memTotalKb` | {'int': 2957} |
| `otherPssKb` | {'int': 2957} |
| `processes` | {'int': 2957} |
| `pssFallbackProcesses` | {'int': 2957} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
