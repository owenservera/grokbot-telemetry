# sandbox_telemetry_parse — 2026-11-28 17:05:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=975633 lines=2163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2155 |
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
| `chromeBrowserPssKb` | {'int': 2155} |
| `chromeGpuPssKb` | {'int': 2155} |
| `chromeOtherPssKb` | {'int': 2155} |
| `chromeProcesses` | {'int': 2155} |
| `chromeProfiles` | {'int': 2155} |
| `chromeRendererMaxPssKb` | {'int': 2155} |
| `chromeRendererPssKb` | {'int': 2155} |
| `chromeRenderers` | {'int': 2155} |
| `chromeTabs` | {'int': 2155} |
| `chromeTabsProbedProfiles` | {'int': 2155} |
| `chromeUtilityPssKb` | {'int': 2155} |
| `desktopPssKb` | {'int': 2155} |
| `hostPssKb` | {'int': 2155} |
| `kind` | {'str': 2155} |
| `memAvailableKb` | {'int': 2155} |
| `memTotalKb` | {'int': 2155} |
| `otherPssKb` | {'int': 2155} |
| `processes` | {'int': 2155} |
| `pssFallbackProcesses` | {'int': 2155} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
