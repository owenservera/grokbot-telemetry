# sandbox_telemetry_parse — 2026-11-26 00:42:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2999373 lines=6644
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6629 |
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
| `chromeBrowserPssKb` | {'int': 6629} |
| `chromeGpuPssKb` | {'int': 6629} |
| `chromeOtherPssKb` | {'int': 6629} |
| `chromeProcesses` | {'int': 6629} |
| `chromeProfiles` | {'int': 6629} |
| `chromeRendererMaxPssKb` | {'int': 6629} |
| `chromeRendererPssKb` | {'int': 6629} |
| `chromeRenderers` | {'int': 6629} |
| `chromeTabs` | {'int': 6629} |
| `chromeTabsProbedProfiles` | {'int': 6629} |
| `chromeUtilityPssKb` | {'int': 6629} |
| `desktopPssKb` | {'int': 6629} |
| `hostPssKb` | {'int': 6629} |
| `kind` | {'str': 6629} |
| `memAvailableKb` | {'int': 6629} |
| `memTotalKb` | {'int': 6629} |
| `otherPssKb` | {'int': 6629} |
| `processes` | {'int': 6629} |
| `pssFallbackProcesses` | {'int': 6629} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
