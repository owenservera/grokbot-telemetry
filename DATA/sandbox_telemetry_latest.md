# sandbox_telemetry_parse — 2026-11-25 14:23:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2791802 lines=6185
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6170 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6170} |
| `chromeGpuPssKb` | {'int': 6170} |
| `chromeOtherPssKb` | {'int': 6170} |
| `chromeProcesses` | {'int': 6170} |
| `chromeProfiles` | {'int': 6170} |
| `chromeRendererMaxPssKb` | {'int': 6170} |
| `chromeRendererPssKb` | {'int': 6170} |
| `chromeRenderers` | {'int': 6170} |
| `chromeTabs` | {'int': 6170} |
| `chromeTabsProbedProfiles` | {'int': 6170} |
| `chromeUtilityPssKb` | {'int': 6170} |
| `desktopPssKb` | {'int': 6170} |
| `hostPssKb` | {'int': 6170} |
| `kind` | {'str': 6170} |
| `memAvailableKb` | {'int': 6170} |
| `memTotalKb` | {'int': 6170} |
| `otherPssKb` | {'int': 6170} |
| `processes` | {'int': 6170} |
| `pssFallbackProcesses` | {'int': 6170} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
