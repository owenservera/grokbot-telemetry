# sandbox_telemetry_parse — 2026-11-28 01:31:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=676095 lines=1501
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1493 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1493} |
| `chromeGpuPssKb` | {'int': 1493} |
| `chromeOtherPssKb` | {'int': 1493} |
| `chromeProcesses` | {'int': 1493} |
| `chromeProfiles` | {'int': 1493} |
| `chromeRendererMaxPssKb` | {'int': 1493} |
| `chromeRendererPssKb` | {'int': 1493} |
| `chromeRenderers` | {'int': 1493} |
| `chromeTabs` | {'int': 1493} |
| `chromeTabsProbedProfiles` | {'int': 1493} |
| `chromeUtilityPssKb` | {'int': 1493} |
| `desktopPssKb` | {'int': 1493} |
| `hostPssKb` | {'int': 1493} |
| `kind` | {'str': 1493} |
| `memAvailableKb` | {'int': 1493} |
| `memTotalKb` | {'int': 1493} |
| `otherPssKb` | {'int': 1493} |
| `processes` | {'int': 1493} |
| `pssFallbackProcesses` | {'int': 1493} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
