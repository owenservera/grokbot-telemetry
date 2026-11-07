# sandbox_telemetry_parse — 2026-11-07 09:02:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=387415 lines=864
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 855 |
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
| `chromeBrowserPssKb` | {'int': 855} |
| `chromeGpuPssKb` | {'int': 855} |
| `chromeOtherPssKb` | {'int': 855} |
| `chromeProcesses` | {'int': 855} |
| `chromeProfiles` | {'int': 855} |
| `chromeRendererMaxPssKb` | {'int': 855} |
| `chromeRendererPssKb` | {'int': 855} |
| `chromeRenderers` | {'int': 855} |
| `chromeTabs` | {'int': 855} |
| `chromeTabsProbedProfiles` | {'int': 855} |
| `chromeUtilityPssKb` | {'int': 855} |
| `desktopPssKb` | {'int': 855} |
| `hostPssKb` | {'int': 855} |
| `kind` | {'str': 855} |
| `memAvailableKb` | {'int': 855} |
| `memTotalKb` | {'int': 855} |
| `otherPssKb` | {'int': 855} |
| `processes` | {'int': 855} |
| `pssFallbackProcesses` | {'int': 855} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
