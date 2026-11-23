# sandbox_telemetry_parse — 2026-11-23 22:15:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2011561 lines=4460
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4445 |
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
| `chromeBrowserPssKb` | {'int': 4445} |
| `chromeGpuPssKb` | {'int': 4445} |
| `chromeOtherPssKb` | {'int': 4445} |
| `chromeProcesses` | {'int': 4445} |
| `chromeProfiles` | {'int': 4445} |
| `chromeRendererMaxPssKb` | {'int': 4445} |
| `chromeRendererPssKb` | {'int': 4445} |
| `chromeRenderers` | {'int': 4445} |
| `chromeTabs` | {'int': 4445} |
| `chromeTabsProbedProfiles` | {'int': 4445} |
| `chromeUtilityPssKb` | {'int': 4445} |
| `desktopPssKb` | {'int': 4445} |
| `hostPssKb` | {'int': 4445} |
| `kind` | {'str': 4445} |
| `memAvailableKb` | {'int': 4445} |
| `memTotalKb` | {'int': 4445} |
| `otherPssKb` | {'int': 4445} |
| `processes` | {'int': 4445} |
| `pssFallbackProcesses` | {'int': 4445} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
