# sandbox_telemetry_parse — 2026-11-26 16:45:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3336119 lines=7390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7373 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7373} |
| `chromeGpuPssKb` | {'int': 7373} |
| `chromeOtherPssKb` | {'int': 7373} |
| `chromeProcesses` | {'int': 7373} |
| `chromeProfiles` | {'int': 7373} |
| `chromeRendererMaxPssKb` | {'int': 7373} |
| `chromeRendererPssKb` | {'int': 7373} |
| `chromeRenderers` | {'int': 7373} |
| `chromeTabs` | {'int': 7373} |
| `chromeTabsProbedProfiles` | {'int': 7373} |
| `chromeUtilityPssKb` | {'int': 7373} |
| `desktopPssKb` | {'int': 7373} |
| `hostPssKb` | {'int': 7373} |
| `kind` | {'str': 7373} |
| `memAvailableKb` | {'int': 7373} |
| `memTotalKb` | {'int': 7373} |
| `otherPssKb` | {'int': 7373} |
| `processes` | {'int': 7373} |
| `pssFallbackProcesses` | {'int': 7373} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
