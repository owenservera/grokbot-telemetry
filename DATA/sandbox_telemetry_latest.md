# sandbox_telemetry_parse — 2026-11-20 01:20:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1522242 lines=3375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3364 |
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
| `chromeBrowserPssKb` | {'int': 3364} |
| `chromeGpuPssKb` | {'int': 3364} |
| `chromeOtherPssKb` | {'int': 3364} |
| `chromeProcesses` | {'int': 3364} |
| `chromeProfiles` | {'int': 3364} |
| `chromeRendererMaxPssKb` | {'int': 3364} |
| `chromeRendererPssKb` | {'int': 3364} |
| `chromeRenderers` | {'int': 3364} |
| `chromeTabs` | {'int': 3364} |
| `chromeTabsProbedProfiles` | {'int': 3364} |
| `chromeUtilityPssKb` | {'int': 3364} |
| `desktopPssKb` | {'int': 3364} |
| `hostPssKb` | {'int': 3364} |
| `kind` | {'str': 3364} |
| `memAvailableKb` | {'int': 3364} |
| `memTotalKb` | {'int': 3364} |
| `otherPssKb` | {'int': 3364} |
| `processes` | {'int': 3364} |
| `pssFallbackProcesses` | {'int': 3364} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
