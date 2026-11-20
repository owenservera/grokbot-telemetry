# sandbox_telemetry_parse — 2026-11-20 03:06:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1549814 lines=3436
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3425 |
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
| `chromeBrowserPssKb` | {'int': 3425} |
| `chromeGpuPssKb` | {'int': 3425} |
| `chromeOtherPssKb` | {'int': 3425} |
| `chromeProcesses` | {'int': 3425} |
| `chromeProfiles` | {'int': 3425} |
| `chromeRendererMaxPssKb` | {'int': 3425} |
| `chromeRendererPssKb` | {'int': 3425} |
| `chromeRenderers` | {'int': 3425} |
| `chromeTabs` | {'int': 3425} |
| `chromeTabsProbedProfiles` | {'int': 3425} |
| `chromeUtilityPssKb` | {'int': 3425} |
| `desktopPssKb` | {'int': 3425} |
| `hostPssKb` | {'int': 3425} |
| `kind` | {'str': 3425} |
| `memAvailableKb` | {'int': 3425} |
| `memTotalKb` | {'int': 3425} |
| `otherPssKb` | {'int': 3425} |
| `processes` | {'int': 3425} |
| `pssFallbackProcesses` | {'int': 3425} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
