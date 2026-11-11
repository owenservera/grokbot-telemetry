# sandbox_telemetry_parse — 2026-11-11 20:34:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1805984 lines=3999
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3990 |
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
| `chromeBrowserPssKb` | {'int': 3990} |
| `chromeGpuPssKb` | {'int': 3990} |
| `chromeOtherPssKb` | {'int': 3990} |
| `chromeProcesses` | {'int': 3990} |
| `chromeProfiles` | {'int': 3990} |
| `chromeRendererMaxPssKb` | {'int': 3990} |
| `chromeRendererPssKb` | {'int': 3990} |
| `chromeRenderers` | {'int': 3990} |
| `chromeTabs` | {'int': 3990} |
| `chromeTabsProbedProfiles` | {'int': 3990} |
| `chromeUtilityPssKb` | {'int': 3990} |
| `desktopPssKb` | {'int': 3990} |
| `hostPssKb` | {'int': 3990} |
| `kind` | {'str': 3990} |
| `memAvailableKb` | {'int': 3990} |
| `memTotalKb` | {'int': 3990} |
| `otherPssKb` | {'int': 3990} |
| `processes` | {'int': 3990} |
| `pssFallbackProcesses` | {'int': 3990} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
