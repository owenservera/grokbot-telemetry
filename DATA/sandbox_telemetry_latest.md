# sandbox_telemetry_parse — 2026-11-24 03:50:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2116935 lines=4693
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4678 |
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
| `chromeBrowserPssKb` | {'int': 4678} |
| `chromeGpuPssKb` | {'int': 4678} |
| `chromeOtherPssKb` | {'int': 4678} |
| `chromeProcesses` | {'int': 4678} |
| `chromeProfiles` | {'int': 4678} |
| `chromeRendererMaxPssKb` | {'int': 4678} |
| `chromeRendererPssKb` | {'int': 4678} |
| `chromeRenderers` | {'int': 4678} |
| `chromeTabs` | {'int': 4678} |
| `chromeTabsProbedProfiles` | {'int': 4678} |
| `chromeUtilityPssKb` | {'int': 4678} |
| `desktopPssKb` | {'int': 4678} |
| `hostPssKb` | {'int': 4678} |
| `kind` | {'str': 4678} |
| `memAvailableKb` | {'int': 4678} |
| `memTotalKb` | {'int': 4678} |
| `otherPssKb` | {'int': 4678} |
| `processes` | {'int': 4678} |
| `pssFallbackProcesses` | {'int': 4678} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
