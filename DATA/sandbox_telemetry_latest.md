# sandbox_telemetry_parse — 2026-11-27 15:57:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=489163 lines=1088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1080 |
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
| `chromeBrowserPssKb` | {'int': 1080} |
| `chromeGpuPssKb` | {'int': 1080} |
| `chromeOtherPssKb` | {'int': 1080} |
| `chromeProcesses` | {'int': 1080} |
| `chromeProfiles` | {'int': 1080} |
| `chromeRendererMaxPssKb` | {'int': 1080} |
| `chromeRendererPssKb` | {'int': 1080} |
| `chromeRenderers` | {'int': 1080} |
| `chromeTabs` | {'int': 1080} |
| `chromeTabsProbedProfiles` | {'int': 1080} |
| `chromeUtilityPssKb` | {'int': 1080} |
| `desktopPssKb` | {'int': 1080} |
| `hostPssKb` | {'int': 1080} |
| `kind` | {'str': 1080} |
| `memAvailableKb` | {'int': 1080} |
| `memTotalKb` | {'int': 1080} |
| `otherPssKb` | {'int': 1080} |
| `processes` | {'int': 1080} |
| `pssFallbackProcesses` | {'int': 1080} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
