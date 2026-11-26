# sandbox_telemetry_parse — 2026-11-26 05:13:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3089386 lines=6843
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6828 |
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
| `chromeBrowserPssKb` | {'int': 6828} |
| `chromeGpuPssKb` | {'int': 6828} |
| `chromeOtherPssKb` | {'int': 6828} |
| `chromeProcesses` | {'int': 6828} |
| `chromeProfiles` | {'int': 6828} |
| `chromeRendererMaxPssKb` | {'int': 6828} |
| `chromeRendererPssKb` | {'int': 6828} |
| `chromeRenderers` | {'int': 6828} |
| `chromeTabs` | {'int': 6828} |
| `chromeTabsProbedProfiles` | {'int': 6828} |
| `chromeUtilityPssKb` | {'int': 6828} |
| `desktopPssKb` | {'int': 6828} |
| `hostPssKb` | {'int': 6828} |
| `kind` | {'str': 6828} |
| `memAvailableKb` | {'int': 6828} |
| `memTotalKb` | {'int': 6828} |
| `otherPssKb` | {'int': 6828} |
| `processes` | {'int': 6828} |
| `pssFallbackProcesses` | {'int': 6828} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
