# sandbox_telemetry_parse — 2026-11-11 02:08:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1428208 lines=3164
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3155 |
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
| `chromeBrowserPssKb` | {'int': 3155} |
| `chromeGpuPssKb` | {'int': 3155} |
| `chromeOtherPssKb` | {'int': 3155} |
| `chromeProcesses` | {'int': 3155} |
| `chromeProfiles` | {'int': 3155} |
| `chromeRendererMaxPssKb` | {'int': 3155} |
| `chromeRendererPssKb` | {'int': 3155} |
| `chromeRenderers` | {'int': 3155} |
| `chromeTabs` | {'int': 3155} |
| `chromeTabsProbedProfiles` | {'int': 3155} |
| `chromeUtilityPssKb` | {'int': 3155} |
| `desktopPssKb` | {'int': 3155} |
| `hostPssKb` | {'int': 3155} |
| `kind` | {'str': 3155} |
| `memAvailableKb` | {'int': 3155} |
| `memTotalKb` | {'int': 3155} |
| `otherPssKb` | {'int': 3155} |
| `processes` | {'int': 3155} |
| `pssFallbackProcesses` | {'int': 3155} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
