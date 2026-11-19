# sandbox_telemetry_parse — 2026-11-19 12:10:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1268254 lines=2812
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2803 |
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
| `chromeBrowserPssKb` | {'int': 2803} |
| `chromeGpuPssKb` | {'int': 2803} |
| `chromeOtherPssKb` | {'int': 2803} |
| `chromeProcesses` | {'int': 2803} |
| `chromeProfiles` | {'int': 2803} |
| `chromeRendererMaxPssKb` | {'int': 2803} |
| `chromeRendererPssKb` | {'int': 2803} |
| `chromeRenderers` | {'int': 2803} |
| `chromeTabs` | {'int': 2803} |
| `chromeTabsProbedProfiles` | {'int': 2803} |
| `chromeUtilityPssKb` | {'int': 2803} |
| `desktopPssKb` | {'int': 2803} |
| `hostPssKb` | {'int': 2803} |
| `kind` | {'str': 2803} |
| `memAvailableKb` | {'int': 2803} |
| `memTotalKb` | {'int': 2803} |
| `otherPssKb` | {'int': 2803} |
| `processes` | {'int': 2803} |
| `pssFallbackProcesses` | {'int': 2803} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
