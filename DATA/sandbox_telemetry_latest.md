# sandbox_telemetry_parse — 2026-11-11 07:43:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1529034 lines=3387
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3378 |
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
| `chromeBrowserPssKb` | {'int': 3378} |
| `chromeGpuPssKb` | {'int': 3378} |
| `chromeOtherPssKb` | {'int': 3378} |
| `chromeProcesses` | {'int': 3378} |
| `chromeProfiles` | {'int': 3378} |
| `chromeRendererMaxPssKb` | {'int': 3378} |
| `chromeRendererPssKb` | {'int': 3378} |
| `chromeRenderers` | {'int': 3378} |
| `chromeTabs` | {'int': 3378} |
| `chromeTabsProbedProfiles` | {'int': 3378} |
| `chromeUtilityPssKb` | {'int': 3378} |
| `desktopPssKb` | {'int': 3378} |
| `hostPssKb` | {'int': 3378} |
| `kind` | {'str': 3378} |
| `memAvailableKb` | {'int': 3378} |
| `memTotalKb` | {'int': 3378} |
| `otherPssKb` | {'int': 3378} |
| `processes` | {'int': 3378} |
| `pssFallbackProcesses` | {'int': 3378} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
