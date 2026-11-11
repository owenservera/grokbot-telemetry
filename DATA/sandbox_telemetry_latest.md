# sandbox_telemetry_parse — 2026-11-11 19:04:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1772026 lines=3924
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3915 |
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
| `chromeBrowserPssKb` | {'int': 3915} |
| `chromeGpuPssKb` | {'int': 3915} |
| `chromeOtherPssKb` | {'int': 3915} |
| `chromeProcesses` | {'int': 3915} |
| `chromeProfiles` | {'int': 3915} |
| `chromeRendererMaxPssKb` | {'int': 3915} |
| `chromeRendererPssKb` | {'int': 3915} |
| `chromeRenderers` | {'int': 3915} |
| `chromeTabs` | {'int': 3915} |
| `chromeTabsProbedProfiles` | {'int': 3915} |
| `chromeUtilityPssKb` | {'int': 3915} |
| `desktopPssKb` | {'int': 3915} |
| `hostPssKb` | {'int': 3915} |
| `kind` | {'str': 3915} |
| `memAvailableKb` | {'int': 3915} |
| `memTotalKb` | {'int': 3915} |
| `otherPssKb` | {'int': 3915} |
| `processes` | {'int': 3915} |
| `pssFallbackProcesses` | {'int': 3915} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
