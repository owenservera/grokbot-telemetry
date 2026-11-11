# sandbox_telemetry_parse — 2026-11-11 05:41:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1493312 lines=3308
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3299 |
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
| `chromeBrowserPssKb` | {'int': 3299} |
| `chromeGpuPssKb` | {'int': 3299} |
| `chromeOtherPssKb` | {'int': 3299} |
| `chromeProcesses` | {'int': 3299} |
| `chromeProfiles` | {'int': 3299} |
| `chromeRendererMaxPssKb` | {'int': 3299} |
| `chromeRendererPssKb` | {'int': 3299} |
| `chromeRenderers` | {'int': 3299} |
| `chromeTabs` | {'int': 3299} |
| `chromeTabsProbedProfiles` | {'int': 3299} |
| `chromeUtilityPssKb` | {'int': 3299} |
| `desktopPssKb` | {'int': 3299} |
| `hostPssKb` | {'int': 3299} |
| `kind` | {'str': 3299} |
| `memAvailableKb` | {'int': 3299} |
| `memTotalKb` | {'int': 3299} |
| `otherPssKb` | {'int': 3299} |
| `processes` | {'int': 3299} |
| `pssFallbackProcesses` | {'int': 3299} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
