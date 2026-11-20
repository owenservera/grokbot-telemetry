# sandbox_telemetry_parse — 2026-11-20 05:30:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1587782 lines=3520
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3509 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3509} |
| `chromeGpuPssKb` | {'int': 3509} |
| `chromeOtherPssKb` | {'int': 3509} |
| `chromeProcesses` | {'int': 3509} |
| `chromeProfiles` | {'int': 3509} |
| `chromeRendererMaxPssKb` | {'int': 3509} |
| `chromeRendererPssKb` | {'int': 3509} |
| `chromeRenderers` | {'int': 3509} |
| `chromeTabs` | {'int': 3509} |
| `chromeTabsProbedProfiles` | {'int': 3509} |
| `chromeUtilityPssKb` | {'int': 3509} |
| `desktopPssKb` | {'int': 3509} |
| `hostPssKb` | {'int': 3509} |
| `kind` | {'str': 3509} |
| `memAvailableKb` | {'int': 3509} |
| `memTotalKb` | {'int': 3509} |
| `otherPssKb` | {'int': 3509} |
| `processes` | {'int': 3509} |
| `pssFallbackProcesses` | {'int': 3509} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
