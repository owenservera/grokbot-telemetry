# sandbox_telemetry_parse — 2026-11-26 18:17:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=27775 lines=68
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 60 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 60} |
| `chromeGpuPssKb` | {'int': 60} |
| `chromeOtherPssKb` | {'int': 60} |
| `chromeProcesses` | {'int': 60} |
| `chromeProfiles` | {'int': 60} |
| `chromeRendererMaxPssKb` | {'int': 60} |
| `chromeRendererPssKb` | {'int': 60} |
| `chromeRenderers` | {'int': 60} |
| `chromeTabs` | {'int': 60} |
| `chromeTabsProbedProfiles` | {'int': 60} |
| `chromeUtilityPssKb` | {'int': 60} |
| `desktopPssKb` | {'int': 60} |
| `hostPssKb` | {'int': 60} |
| `kind` | {'str': 60} |
| `memAvailableKb` | {'int': 60} |
| `memTotalKb` | {'int': 60} |
| `otherPssKb` | {'int': 60} |
| `processes` | {'int': 60} |
| `pssFallbackProcesses` | {'int': 60} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
