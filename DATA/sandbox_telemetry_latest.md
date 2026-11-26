# sandbox_telemetry_parse — 2026-11-26 14:19:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3286649 lines=7279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7264 |
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
| `chromeBrowserPssKb` | {'int': 7264} |
| `chromeGpuPssKb` | {'int': 7264} |
| `chromeOtherPssKb` | {'int': 7264} |
| `chromeProcesses` | {'int': 7264} |
| `chromeProfiles` | {'int': 7264} |
| `chromeRendererMaxPssKb` | {'int': 7264} |
| `chromeRendererPssKb` | {'int': 7264} |
| `chromeRenderers` | {'int': 7264} |
| `chromeTabs` | {'int': 7264} |
| `chromeTabsProbedProfiles` | {'int': 7264} |
| `chromeUtilityPssKb` | {'int': 7264} |
| `desktopPssKb` | {'int': 7264} |
| `hostPssKb` | {'int': 7264} |
| `kind` | {'str': 7264} |
| `memAvailableKb` | {'int': 7264} |
| `memTotalKb` | {'int': 7264} |
| `otherPssKb` | {'int': 7264} |
| `processes` | {'int': 7264} |
| `pssFallbackProcesses` | {'int': 7264} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
