# sandbox_telemetry_parse — 2026-11-11 21:00:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1812770 lines=4014
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4005 |
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
| `chromeBrowserPssKb` | {'int': 4005} |
| `chromeGpuPssKb` | {'int': 4005} |
| `chromeOtherPssKb` | {'int': 4005} |
| `chromeProcesses` | {'int': 4005} |
| `chromeProfiles` | {'int': 4005} |
| `chromeRendererMaxPssKb` | {'int': 4005} |
| `chromeRendererPssKb` | {'int': 4005} |
| `chromeRenderers` | {'int': 4005} |
| `chromeTabs` | {'int': 4005} |
| `chromeTabsProbedProfiles` | {'int': 4005} |
| `chromeUtilityPssKb` | {'int': 4005} |
| `desktopPssKb` | {'int': 4005} |
| `hostPssKb` | {'int': 4005} |
| `kind` | {'str': 4005} |
| `memAvailableKb` | {'int': 4005} |
| `memTotalKb` | {'int': 4005} |
| `otherPssKb` | {'int': 4005} |
| `processes` | {'int': 4005} |
| `pssFallbackProcesses` | {'int': 4005} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
