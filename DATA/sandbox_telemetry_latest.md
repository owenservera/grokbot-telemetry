# sandbox_telemetry_parse — 2026-11-27 17:13:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=512715 lines=1140
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1132 |
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
| `chromeBrowserPssKb` | {'int': 1132} |
| `chromeGpuPssKb` | {'int': 1132} |
| `chromeOtherPssKb` | {'int': 1132} |
| `chromeProcesses` | {'int': 1132} |
| `chromeProfiles` | {'int': 1132} |
| `chromeRendererMaxPssKb` | {'int': 1132} |
| `chromeRendererPssKb` | {'int': 1132} |
| `chromeRenderers` | {'int': 1132} |
| `chromeTabs` | {'int': 1132} |
| `chromeTabsProbedProfiles` | {'int': 1132} |
| `chromeUtilityPssKb` | {'int': 1132} |
| `desktopPssKb` | {'int': 1132} |
| `hostPssKb` | {'int': 1132} |
| `kind` | {'str': 1132} |
| `memAvailableKb` | {'int': 1132} |
| `memTotalKb` | {'int': 1132} |
| `otherPssKb` | {'int': 1132} |
| `processes` | {'int': 1132} |
| `pssFallbackProcesses` | {'int': 1132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
