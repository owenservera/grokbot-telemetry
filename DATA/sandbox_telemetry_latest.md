# sandbox_telemetry_parse — 2026-11-26 07:16:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3136892 lines=6948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6933 |
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
| `chromeBrowserPssKb` | {'int': 6933} |
| `chromeGpuPssKb` | {'int': 6933} |
| `chromeOtherPssKb` | {'int': 6933} |
| `chromeProcesses` | {'int': 6933} |
| `chromeProfiles` | {'int': 6933} |
| `chromeRendererMaxPssKb` | {'int': 6933} |
| `chromeRendererPssKb` | {'int': 6933} |
| `chromeRenderers` | {'int': 6933} |
| `chromeTabs` | {'int': 6933} |
| `chromeTabsProbedProfiles` | {'int': 6933} |
| `chromeUtilityPssKb` | {'int': 6933} |
| `desktopPssKb` | {'int': 6933} |
| `hostPssKb` | {'int': 6933} |
| `kind` | {'str': 6933} |
| `memAvailableKb` | {'int': 6933} |
| `memTotalKb` | {'int': 6933} |
| `otherPssKb` | {'int': 6933} |
| `processes` | {'int': 6933} |
| `pssFallbackProcesses` | {'int': 6933} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
