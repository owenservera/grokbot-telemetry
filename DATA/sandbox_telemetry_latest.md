# sandbox_telemetry_parse — 2026-11-10 19:07:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1277982 lines=2832
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2823 |
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
| `chromeBrowserPssKb` | {'int': 2823} |
| `chromeGpuPssKb` | {'int': 2823} |
| `chromeOtherPssKb` | {'int': 2823} |
| `chromeProcesses` | {'int': 2823} |
| `chromeProfiles` | {'int': 2823} |
| `chromeRendererMaxPssKb` | {'int': 2823} |
| `chromeRendererPssKb` | {'int': 2823} |
| `chromeRenderers` | {'int': 2823} |
| `chromeTabs` | {'int': 2823} |
| `chromeTabsProbedProfiles` | {'int': 2823} |
| `chromeUtilityPssKb` | {'int': 2823} |
| `desktopPssKb` | {'int': 2823} |
| `hostPssKb` | {'int': 2823} |
| `kind` | {'str': 2823} |
| `memAvailableKb` | {'int': 2823} |
| `memTotalKb` | {'int': 2823} |
| `otherPssKb` | {'int': 2823} |
| `processes` | {'int': 2823} |
| `pssFallbackProcesses` | {'int': 2823} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
