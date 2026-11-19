# sandbox_telemetry_parse — 2026-11-19 10:50:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1237042 lines=2743
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2734 |
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
| `chromeBrowserPssKb` | {'int': 2734} |
| `chromeGpuPssKb` | {'int': 2734} |
| `chromeOtherPssKb` | {'int': 2734} |
| `chromeProcesses` | {'int': 2734} |
| `chromeProfiles` | {'int': 2734} |
| `chromeRendererMaxPssKb` | {'int': 2734} |
| `chromeRendererPssKb` | {'int': 2734} |
| `chromeRenderers` | {'int': 2734} |
| `chromeTabs` | {'int': 2734} |
| `chromeTabsProbedProfiles` | {'int': 2734} |
| `chromeUtilityPssKb` | {'int': 2734} |
| `desktopPssKb` | {'int': 2734} |
| `hostPssKb` | {'int': 2734} |
| `kind` | {'str': 2734} |
| `memAvailableKb` | {'int': 2734} |
| `memTotalKb` | {'int': 2734} |
| `otherPssKb` | {'int': 2734} |
| `processes` | {'int': 2734} |
| `pssFallbackProcesses` | {'int': 2734} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
