# sandbox_telemetry_parse — 2026-11-11 03:01:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1444028 lines=3199
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3190 |
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
| `chromeBrowserPssKb` | {'int': 3190} |
| `chromeGpuPssKb` | {'int': 3190} |
| `chromeOtherPssKb` | {'int': 3190} |
| `chromeProcesses` | {'int': 3190} |
| `chromeProfiles` | {'int': 3190} |
| `chromeRendererMaxPssKb` | {'int': 3190} |
| `chromeRendererPssKb` | {'int': 3190} |
| `chromeRenderers` | {'int': 3190} |
| `chromeTabs` | {'int': 3190} |
| `chromeTabsProbedProfiles` | {'int': 3190} |
| `chromeUtilityPssKb` | {'int': 3190} |
| `desktopPssKb` | {'int': 3190} |
| `hostPssKb` | {'int': 3190} |
| `kind` | {'str': 3190} |
| `memAvailableKb` | {'int': 3190} |
| `memTotalKb` | {'int': 3190} |
| `otherPssKb` | {'int': 3190} |
| `processes` | {'int': 3190} |
| `pssFallbackProcesses` | {'int': 3190} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
