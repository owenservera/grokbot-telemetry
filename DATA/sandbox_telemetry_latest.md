# sandbox_telemetry_parse — 2026-11-12 15:36:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2200195 lines=4870
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4861 |
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
| `chromeBrowserPssKb` | {'int': 4861} |
| `chromeGpuPssKb` | {'int': 4861} |
| `chromeOtherPssKb` | {'int': 4861} |
| `chromeProcesses` | {'int': 4861} |
| `chromeProfiles` | {'int': 4861} |
| `chromeRendererMaxPssKb` | {'int': 4861} |
| `chromeRendererPssKb` | {'int': 4861} |
| `chromeRenderers` | {'int': 4861} |
| `chromeTabs` | {'int': 4861} |
| `chromeTabsProbedProfiles` | {'int': 4861} |
| `chromeUtilityPssKb` | {'int': 4861} |
| `desktopPssKb` | {'int': 4861} |
| `hostPssKb` | {'int': 4861} |
| `kind` | {'str': 4861} |
| `memAvailableKb` | {'int': 4861} |
| `memTotalKb` | {'int': 4861} |
| `otherPssKb` | {'int': 4861} |
| `processes` | {'int': 4861} |
| `pssFallbackProcesses` | {'int': 4861} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
