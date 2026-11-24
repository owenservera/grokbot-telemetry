# sandbox_telemetry_parse — 2026-11-24 02:32:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2092979 lines=4640
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4625 |
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
| `chromeBrowserPssKb` | {'int': 4625} |
| `chromeGpuPssKb` | {'int': 4625} |
| `chromeOtherPssKb` | {'int': 4625} |
| `chromeProcesses` | {'int': 4625} |
| `chromeProfiles` | {'int': 4625} |
| `chromeRendererMaxPssKb` | {'int': 4625} |
| `chromeRendererPssKb` | {'int': 4625} |
| `chromeRenderers` | {'int': 4625} |
| `chromeTabs` | {'int': 4625} |
| `chromeTabsProbedProfiles` | {'int': 4625} |
| `chromeUtilityPssKb` | {'int': 4625} |
| `desktopPssKb` | {'int': 4625} |
| `hostPssKb` | {'int': 4625} |
| `kind` | {'str': 4625} |
| `memAvailableKb` | {'int': 4625} |
| `memTotalKb` | {'int': 4625} |
| `otherPssKb` | {'int': 4625} |
| `processes` | {'int': 4625} |
| `pssFallbackProcesses` | {'int': 4625} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
