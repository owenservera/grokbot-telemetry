# sandbox_telemetry_parse — 2026-11-11 13:05:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1643974 lines=3641
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3632 |
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
| `chromeBrowserPssKb` | {'int': 3632} |
| `chromeGpuPssKb` | {'int': 3632} |
| `chromeOtherPssKb` | {'int': 3632} |
| `chromeProcesses` | {'int': 3632} |
| `chromeProfiles` | {'int': 3632} |
| `chromeRendererMaxPssKb` | {'int': 3632} |
| `chromeRendererPssKb` | {'int': 3632} |
| `chromeRenderers` | {'int': 3632} |
| `chromeTabs` | {'int': 3632} |
| `chromeTabsProbedProfiles` | {'int': 3632} |
| `chromeUtilityPssKb` | {'int': 3632} |
| `desktopPssKb` | {'int': 3632} |
| `hostPssKb` | {'int': 3632} |
| `kind` | {'str': 3632} |
| `memAvailableKb` | {'int': 3632} |
| `memTotalKb` | {'int': 3632} |
| `otherPssKb` | {'int': 3632} |
| `processes` | {'int': 3632} |
| `pssFallbackProcesses` | {'int': 3632} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
