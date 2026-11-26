# sandbox_telemetry_parse — 2026-11-26 11:04:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3224689 lines=7142
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7127 |
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
| `chromeBrowserPssKb` | {'int': 7127} |
| `chromeGpuPssKb` | {'int': 7127} |
| `chromeOtherPssKb` | {'int': 7127} |
| `chromeProcesses` | {'int': 7127} |
| `chromeProfiles` | {'int': 7127} |
| `chromeRendererMaxPssKb` | {'int': 7127} |
| `chromeRendererPssKb` | {'int': 7127} |
| `chromeRenderers` | {'int': 7127} |
| `chromeTabs` | {'int': 7127} |
| `chromeTabsProbedProfiles` | {'int': 7127} |
| `chromeUtilityPssKb` | {'int': 7127} |
| `desktopPssKb` | {'int': 7127} |
| `hostPssKb` | {'int': 7127} |
| `kind` | {'str': 7127} |
| `memAvailableKb` | {'int': 7127} |
| `memTotalKb` | {'int': 7127} |
| `otherPssKb` | {'int': 7127} |
| `processes` | {'int': 7127} |
| `pssFallbackProcesses` | {'int': 7127} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
