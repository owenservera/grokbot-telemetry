# sandbox_telemetry_parse — 2026-11-25 06:19:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2626728 lines=5820
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5805 |
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
| `chromeBrowserPssKb` | {'int': 5805} |
| `chromeGpuPssKb` | {'int': 5805} |
| `chromeOtherPssKb` | {'int': 5805} |
| `chromeProcesses` | {'int': 5805} |
| `chromeProfiles` | {'int': 5805} |
| `chromeRendererMaxPssKb` | {'int': 5805} |
| `chromeRendererPssKb` | {'int': 5805} |
| `chromeRenderers` | {'int': 5805} |
| `chromeTabs` | {'int': 5805} |
| `chromeTabsProbedProfiles` | {'int': 5805} |
| `chromeUtilityPssKb` | {'int': 5805} |
| `desktopPssKb` | {'int': 5805} |
| `hostPssKb` | {'int': 5805} |
| `kind` | {'str': 5805} |
| `memAvailableKb` | {'int': 5805} |
| `memTotalKb` | {'int': 5805} |
| `otherPssKb` | {'int': 5805} |
| `processes` | {'int': 5805} |
| `pssFallbackProcesses` | {'int': 5805} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
