# sandbox_telemetry_parse — 2026-11-27 17:52:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=529929 lines=1178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1170 |
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
| `chromeBrowserPssKb` | {'int': 1170} |
| `chromeGpuPssKb` | {'int': 1170} |
| `chromeOtherPssKb` | {'int': 1170} |
| `chromeProcesses` | {'int': 1170} |
| `chromeProfiles` | {'int': 1170} |
| `chromeRendererMaxPssKb` | {'int': 1170} |
| `chromeRendererPssKb` | {'int': 1170} |
| `chromeRenderers` | {'int': 1170} |
| `chromeTabs` | {'int': 1170} |
| `chromeTabsProbedProfiles` | {'int': 1170} |
| `chromeUtilityPssKb` | {'int': 1170} |
| `desktopPssKb` | {'int': 1170} |
| `hostPssKb` | {'int': 1170} |
| `kind` | {'str': 1170} |
| `memAvailableKb` | {'int': 1170} |
| `memTotalKb` | {'int': 1170} |
| `otherPssKb` | {'int': 1170} |
| `processes` | {'int': 1170} |
| `pssFallbackProcesses` | {'int': 1170} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
