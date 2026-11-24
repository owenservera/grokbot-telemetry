# sandbox_telemetry_parse — 2026-11-24 07:52:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2195165 lines=4866
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4851 |
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
| `chromeBrowserPssKb` | {'int': 4851} |
| `chromeGpuPssKb` | {'int': 4851} |
| `chromeOtherPssKb` | {'int': 4851} |
| `chromeProcesses` | {'int': 4851} |
| `chromeProfiles` | {'int': 4851} |
| `chromeRendererMaxPssKb` | {'int': 4851} |
| `chromeRendererPssKb` | {'int': 4851} |
| `chromeRenderers` | {'int': 4851} |
| `chromeTabs` | {'int': 4851} |
| `chromeTabsProbedProfiles` | {'int': 4851} |
| `chromeUtilityPssKb` | {'int': 4851} |
| `desktopPssKb` | {'int': 4851} |
| `hostPssKb` | {'int': 4851} |
| `kind` | {'str': 4851} |
| `memAvailableKb` | {'int': 4851} |
| `memTotalKb` | {'int': 4851} |
| `otherPssKb` | {'int': 4851} |
| `processes` | {'int': 4851} |
| `pssFallbackProcesses` | {'int': 4851} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
