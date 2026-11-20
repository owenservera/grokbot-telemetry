# sandbox_telemetry_parse — 2026-11-20 15:19:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1773195 lines=3930
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3919 |
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
| `chromeBrowserPssKb` | {'int': 3919} |
| `chromeGpuPssKb` | {'int': 3919} |
| `chromeOtherPssKb` | {'int': 3919} |
| `chromeProcesses` | {'int': 3919} |
| `chromeProfiles` | {'int': 3919} |
| `chromeRendererMaxPssKb` | {'int': 3919} |
| `chromeRendererPssKb` | {'int': 3919} |
| `chromeRenderers` | {'int': 3919} |
| `chromeTabs` | {'int': 3919} |
| `chromeTabsProbedProfiles` | {'int': 3919} |
| `chromeUtilityPssKb` | {'int': 3919} |
| `desktopPssKb` | {'int': 3919} |
| `hostPssKb` | {'int': 3919} |
| `kind` | {'str': 3919} |
| `memAvailableKb` | {'int': 3919} |
| `memTotalKb` | {'int': 3919} |
| `otherPssKb` | {'int': 3919} |
| `processes` | {'int': 3919} |
| `pssFallbackProcesses` | {'int': 3919} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
