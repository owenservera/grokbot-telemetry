# sandbox_telemetry_parse — 2026-11-19 06:46:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1157912 lines=2568
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2559 |
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
| `chromeBrowserPssKb` | {'int': 2559} |
| `chromeGpuPssKb` | {'int': 2559} |
| `chromeOtherPssKb` | {'int': 2559} |
| `chromeProcesses` | {'int': 2559} |
| `chromeProfiles` | {'int': 2559} |
| `chromeRendererMaxPssKb` | {'int': 2559} |
| `chromeRendererPssKb` | {'int': 2559} |
| `chromeRenderers` | {'int': 2559} |
| `chromeTabs` | {'int': 2559} |
| `chromeTabsProbedProfiles` | {'int': 2559} |
| `chromeUtilityPssKb` | {'int': 2559} |
| `desktopPssKb` | {'int': 2559} |
| `hostPssKb` | {'int': 2559} |
| `kind` | {'str': 2559} |
| `memAvailableKb` | {'int': 2559} |
| `memTotalKb` | {'int': 2559} |
| `otherPssKb` | {'int': 2559} |
| `processes` | {'int': 2559} |
| `pssFallbackProcesses` | {'int': 2559} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
