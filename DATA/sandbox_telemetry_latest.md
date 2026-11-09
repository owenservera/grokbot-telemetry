# sandbox_telemetry_parse — 2026-11-09 15:17:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=713151 lines=1584
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1575 |
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
| `chromeBrowserPssKb` | {'int': 1575} |
| `chromeGpuPssKb` | {'int': 1575} |
| `chromeOtherPssKb` | {'int': 1575} |
| `chromeProcesses` | {'int': 1575} |
| `chromeProfiles` | {'int': 1575} |
| `chromeRendererMaxPssKb` | {'int': 1575} |
| `chromeRendererPssKb` | {'int': 1575} |
| `chromeRenderers` | {'int': 1575} |
| `chromeTabs` | {'int': 1575} |
| `chromeTabsProbedProfiles` | {'int': 1575} |
| `chromeUtilityPssKb` | {'int': 1575} |
| `desktopPssKb` | {'int': 1575} |
| `hostPssKb` | {'int': 1575} |
| `kind` | {'str': 1575} |
| `memAvailableKb` | {'int': 1575} |
| `memTotalKb` | {'int': 1575} |
| `otherPssKb` | {'int': 1575} |
| `processes` | {'int': 1575} |
| `pssFallbackProcesses` | {'int': 1575} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
