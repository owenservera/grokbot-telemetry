# sandbox_telemetry_parse — 2026-11-26 07:03:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3131013 lines=6935
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6920 |
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
| `chromeBrowserPssKb` | {'int': 6920} |
| `chromeGpuPssKb` | {'int': 6920} |
| `chromeOtherPssKb` | {'int': 6920} |
| `chromeProcesses` | {'int': 6920} |
| `chromeProfiles` | {'int': 6920} |
| `chromeRendererMaxPssKb` | {'int': 6920} |
| `chromeRendererPssKb` | {'int': 6920} |
| `chromeRenderers` | {'int': 6920} |
| `chromeTabs` | {'int': 6920} |
| `chromeTabsProbedProfiles` | {'int': 6920} |
| `chromeUtilityPssKb` | {'int': 6920} |
| `desktopPssKb` | {'int': 6920} |
| `hostPssKb` | {'int': 6920} |
| `kind` | {'str': 6920} |
| `memAvailableKb` | {'int': 6920} |
| `memTotalKb` | {'int': 6920} |
| `otherPssKb` | {'int': 6920} |
| `processes` | {'int': 6920} |
| `pssFallbackProcesses` | {'int': 6920} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
