# sandbox_telemetry_parse — 2026-11-10 18:36:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1268479 lines=2811
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2802 |
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
| `chromeBrowserPssKb` | {'int': 2802} |
| `chromeGpuPssKb` | {'int': 2802} |
| `chromeOtherPssKb` | {'int': 2802} |
| `chromeProcesses` | {'int': 2802} |
| `chromeProfiles` | {'int': 2802} |
| `chromeRendererMaxPssKb` | {'int': 2802} |
| `chromeRendererPssKb` | {'int': 2802} |
| `chromeRenderers` | {'int': 2802} |
| `chromeTabs` | {'int': 2802} |
| `chromeTabsProbedProfiles` | {'int': 2802} |
| `chromeUtilityPssKb` | {'int': 2802} |
| `desktopPssKb` | {'int': 2802} |
| `hostPssKb` | {'int': 2802} |
| `kind` | {'str': 2802} |
| `memAvailableKb` | {'int': 2802} |
| `memTotalKb` | {'int': 2802} |
| `otherPssKb` | {'int': 2802} |
| `processes` | {'int': 2802} |
| `pssFallbackProcesses` | {'int': 2802} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
