# sandbox_telemetry_parse — 2026-11-26 12:18:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3245486 lines=7188
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7173 |
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
| `chromeBrowserPssKb` | {'int': 7173} |
| `chromeGpuPssKb` | {'int': 7173} |
| `chromeOtherPssKb` | {'int': 7173} |
| `chromeProcesses` | {'int': 7173} |
| `chromeProfiles` | {'int': 7173} |
| `chromeRendererMaxPssKb` | {'int': 7173} |
| `chromeRendererPssKb` | {'int': 7173} |
| `chromeRenderers` | {'int': 7173} |
| `chromeTabs` | {'int': 7173} |
| `chromeTabsProbedProfiles` | {'int': 7173} |
| `chromeUtilityPssKb` | {'int': 7173} |
| `desktopPssKb` | {'int': 7173} |
| `hostPssKb` | {'int': 7173} |
| `kind` | {'str': 7173} |
| `memAvailableKb` | {'int': 7173} |
| `memTotalKb` | {'int': 7173} |
| `otherPssKb` | {'int': 7173} |
| `processes` | {'int': 7173} |
| `pssFallbackProcesses` | {'int': 7173} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
