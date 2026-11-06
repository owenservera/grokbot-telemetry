# sandbox_telemetry_parse — 2026-11-06 20:00:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=143218 lines=324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 315 |
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
| `chromeBrowserPssKb` | {'int': 315} |
| `chromeGpuPssKb` | {'int': 315} |
| `chromeOtherPssKb` | {'int': 315} |
| `chromeProcesses` | {'int': 315} |
| `chromeProfiles` | {'int': 315} |
| `chromeRendererMaxPssKb` | {'int': 315} |
| `chromeRendererPssKb` | {'int': 315} |
| `chromeRenderers` | {'int': 315} |
| `chromeTabs` | {'int': 315} |
| `chromeTabsProbedProfiles` | {'int': 315} |
| `chromeUtilityPssKb` | {'int': 315} |
| `desktopPssKb` | {'int': 315} |
| `hostPssKb` | {'int': 315} |
| `kind` | {'str': 315} |
| `memAvailableKb` | {'int': 315} |
| `memTotalKb` | {'int': 315} |
| `otherPssKb` | {'int': 315} |
| `processes` | {'int': 315} |
| `pssFallbackProcesses` | {'int': 315} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
