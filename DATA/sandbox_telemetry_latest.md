# sandbox_telemetry_parse — 2026-11-12 00:21:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1887450 lines=4179
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4170 |
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
| `chromeBrowserPssKb` | {'int': 4170} |
| `chromeGpuPssKb` | {'int': 4170} |
| `chromeOtherPssKb` | {'int': 4170} |
| `chromeProcesses` | {'int': 4170} |
| `chromeProfiles` | {'int': 4170} |
| `chromeRendererMaxPssKb` | {'int': 4170} |
| `chromeRendererPssKb` | {'int': 4170} |
| `chromeRenderers` | {'int': 4170} |
| `chromeTabs` | {'int': 4170} |
| `chromeTabsProbedProfiles` | {'int': 4170} |
| `chromeUtilityPssKb` | {'int': 4170} |
| `desktopPssKb` | {'int': 4170} |
| `hostPssKb` | {'int': 4170} |
| `kind` | {'str': 4170} |
| `memAvailableKb` | {'int': 4170} |
| `memTotalKb` | {'int': 4170} |
| `otherPssKb` | {'int': 4170} |
| `processes` | {'int': 4170} |
| `pssFallbackProcesses` | {'int': 4170} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
