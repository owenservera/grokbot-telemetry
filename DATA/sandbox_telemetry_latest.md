# sandbox_telemetry_parse — 2026-11-25 10:24:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2715845 lines=6017
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6002 |
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
| `chromeBrowserPssKb` | {'int': 6002} |
| `chromeGpuPssKb` | {'int': 6002} |
| `chromeOtherPssKb` | {'int': 6002} |
| `chromeProcesses` | {'int': 6002} |
| `chromeProfiles` | {'int': 6002} |
| `chromeRendererMaxPssKb` | {'int': 6002} |
| `chromeRendererPssKb` | {'int': 6002} |
| `chromeRenderers` | {'int': 6002} |
| `chromeTabs` | {'int': 6002} |
| `chromeTabsProbedProfiles` | {'int': 6002} |
| `chromeUtilityPssKb` | {'int': 6002} |
| `desktopPssKb` | {'int': 6002} |
| `hostPssKb` | {'int': 6002} |
| `kind` | {'str': 6002} |
| `memAvailableKb` | {'int': 6002} |
| `memTotalKb` | {'int': 6002} |
| `otherPssKb` | {'int': 6002} |
| `processes` | {'int': 6002} |
| `pssFallbackProcesses` | {'int': 6002} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
