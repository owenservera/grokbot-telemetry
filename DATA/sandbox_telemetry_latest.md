# sandbox_telemetry_parse — 2026-11-19 21:34:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1450807 lines=3217
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3206 |
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
| `chromeBrowserPssKb` | {'int': 3206} |
| `chromeGpuPssKb` | {'int': 3206} |
| `chromeOtherPssKb` | {'int': 3206} |
| `chromeProcesses` | {'int': 3206} |
| `chromeProfiles` | {'int': 3206} |
| `chromeRendererMaxPssKb` | {'int': 3206} |
| `chromeRendererPssKb` | {'int': 3206} |
| `chromeRenderers` | {'int': 3206} |
| `chromeTabs` | {'int': 3206} |
| `chromeTabsProbedProfiles` | {'int': 3206} |
| `chromeUtilityPssKb` | {'int': 3206} |
| `desktopPssKb` | {'int': 3206} |
| `hostPssKb` | {'int': 3206} |
| `kind` | {'str': 3206} |
| `memAvailableKb` | {'int': 3206} |
| `memTotalKb` | {'int': 3206} |
| `otherPssKb` | {'int': 3206} |
| `processes` | {'int': 3206} |
| `pssFallbackProcesses` | {'int': 3206} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
