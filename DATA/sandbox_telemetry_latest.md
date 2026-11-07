# sandbox_telemetry_parse — 2026-11-07 12:13:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=455287 lines=1014
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1005 |
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
| `chromeBrowserPssKb` | {'int': 1005} |
| `chromeGpuPssKb` | {'int': 1005} |
| `chromeOtherPssKb` | {'int': 1005} |
| `chromeProcesses` | {'int': 1005} |
| `chromeProfiles` | {'int': 1005} |
| `chromeRendererMaxPssKb` | {'int': 1005} |
| `chromeRendererPssKb` | {'int': 1005} |
| `chromeRenderers` | {'int': 1005} |
| `chromeTabs` | {'int': 1005} |
| `chromeTabsProbedProfiles` | {'int': 1005} |
| `chromeUtilityPssKb` | {'int': 1005} |
| `desktopPssKb` | {'int': 1005} |
| `hostPssKb` | {'int': 1005} |
| `kind` | {'str': 1005} |
| `memAvailableKb` | {'int': 1005} |
| `memTotalKb` | {'int': 1005} |
| `otherPssKb` | {'int': 1005} |
| `processes` | {'int': 1005} |
| `pssFallbackProcesses` | {'int': 1005} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
