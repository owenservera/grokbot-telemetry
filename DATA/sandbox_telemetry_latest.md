# sandbox_telemetry_parse — 2026-11-26 09:46:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3194362 lines=7075
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7060 |
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
| `chromeBrowserPssKb` | {'int': 7060} |
| `chromeGpuPssKb` | {'int': 7060} |
| `chromeOtherPssKb` | {'int': 7060} |
| `chromeProcesses` | {'int': 7060} |
| `chromeProfiles` | {'int': 7060} |
| `chromeRendererMaxPssKb` | {'int': 7060} |
| `chromeRendererPssKb` | {'int': 7060} |
| `chromeRenderers` | {'int': 7060} |
| `chromeTabs` | {'int': 7060} |
| `chromeTabsProbedProfiles` | {'int': 7060} |
| `chromeUtilityPssKb` | {'int': 7060} |
| `desktopPssKb` | {'int': 7060} |
| `hostPssKb` | {'int': 7060} |
| `kind` | {'str': 7060} |
| `memAvailableKb` | {'int': 7060} |
| `memTotalKb` | {'int': 7060} |
| `otherPssKb` | {'int': 7060} |
| `processes` | {'int': 7060} |
| `pssFallbackProcesses` | {'int': 7060} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
