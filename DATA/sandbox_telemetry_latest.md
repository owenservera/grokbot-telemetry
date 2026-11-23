# sandbox_telemetry_parse — 2026-11-23 17:33:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1926903 lines=4273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4258 |
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
| `chromeBrowserPssKb` | {'int': 4258} |
| `chromeGpuPssKb` | {'int': 4258} |
| `chromeOtherPssKb` | {'int': 4258} |
| `chromeProcesses` | {'int': 4258} |
| `chromeProfiles` | {'int': 4258} |
| `chromeRendererMaxPssKb` | {'int': 4258} |
| `chromeRendererPssKb` | {'int': 4258} |
| `chromeRenderers` | {'int': 4258} |
| `chromeTabs` | {'int': 4258} |
| `chromeTabsProbedProfiles` | {'int': 4258} |
| `chromeUtilityPssKb` | {'int': 4258} |
| `desktopPssKb` | {'int': 4258} |
| `hostPssKb` | {'int': 4258} |
| `kind` | {'str': 4258} |
| `memAvailableKb` | {'int': 4258} |
| `memTotalKb` | {'int': 4258} |
| `otherPssKb` | {'int': 4258} |
| `processes` | {'int': 4258} |
| `pssFallbackProcesses` | {'int': 4258} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
