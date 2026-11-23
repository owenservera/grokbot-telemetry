# sandbox_telemetry_parse — 2026-11-23 18:44:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1948174 lines=4320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4305 |
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
| `chromeBrowserPssKb` | {'int': 4305} |
| `chromeGpuPssKb` | {'int': 4305} |
| `chromeOtherPssKb` | {'int': 4305} |
| `chromeProcesses` | {'int': 4305} |
| `chromeProfiles` | {'int': 4305} |
| `chromeRendererMaxPssKb` | {'int': 4305} |
| `chromeRendererPssKb` | {'int': 4305} |
| `chromeRenderers` | {'int': 4305} |
| `chromeTabs` | {'int': 4305} |
| `chromeTabsProbedProfiles` | {'int': 4305} |
| `chromeUtilityPssKb` | {'int': 4305} |
| `desktopPssKb` | {'int': 4305} |
| `hostPssKb` | {'int': 4305} |
| `kind` | {'str': 4305} |
| `memAvailableKb` | {'int': 4305} |
| `memTotalKb` | {'int': 4305} |
| `otherPssKb` | {'int': 4305} |
| `processes` | {'int': 4305} |
| `pssFallbackProcesses` | {'int': 4305} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
