# sandbox_telemetry_parse — 2026-11-07 08:27:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=378826 lines=845
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 836 |
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
| `chromeBrowserPssKb` | {'int': 836} |
| `chromeGpuPssKb` | {'int': 836} |
| `chromeOtherPssKb` | {'int': 836} |
| `chromeProcesses` | {'int': 836} |
| `chromeProfiles` | {'int': 836} |
| `chromeRendererMaxPssKb` | {'int': 836} |
| `chromeRendererPssKb` | {'int': 836} |
| `chromeRenderers` | {'int': 836} |
| `chromeTabs` | {'int': 836} |
| `chromeTabsProbedProfiles` | {'int': 836} |
| `chromeUtilityPssKb` | {'int': 836} |
| `desktopPssKb` | {'int': 836} |
| `hostPssKb` | {'int': 836} |
| `kind` | {'str': 836} |
| `memAvailableKb` | {'int': 836} |
| `memTotalKb` | {'int': 836} |
| `otherPssKb` | {'int': 836} |
| `processes` | {'int': 836} |
| `pssFallbackProcesses` | {'int': 836} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
