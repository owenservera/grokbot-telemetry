# sandbox_telemetry_parse — 2026-11-24 21:53:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2465761 lines=5464
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5449 |
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
| `chromeBrowserPssKb` | {'int': 5449} |
| `chromeGpuPssKb` | {'int': 5449} |
| `chromeOtherPssKb` | {'int': 5449} |
| `chromeProcesses` | {'int': 5449} |
| `chromeProfiles` | {'int': 5449} |
| `chromeRendererMaxPssKb` | {'int': 5449} |
| `chromeRendererPssKb` | {'int': 5449} |
| `chromeRenderers` | {'int': 5449} |
| `chromeTabs` | {'int': 5449} |
| `chromeTabsProbedProfiles` | {'int': 5449} |
| `chromeUtilityPssKb` | {'int': 5449} |
| `desktopPssKb` | {'int': 5449} |
| `hostPssKb` | {'int': 5449} |
| `kind` | {'str': 5449} |
| `memAvailableKb` | {'int': 5449} |
| `memTotalKb` | {'int': 5449} |
| `otherPssKb` | {'int': 5449} |
| `processes` | {'int': 5449} |
| `pssFallbackProcesses` | {'int': 5449} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
