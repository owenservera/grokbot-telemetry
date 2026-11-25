# sandbox_telemetry_parse — 2026-11-25 07:22:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2647520 lines=5866
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5851 |
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
| `chromeBrowserPssKb` | {'int': 5851} |
| `chromeGpuPssKb` | {'int': 5851} |
| `chromeOtherPssKb` | {'int': 5851} |
| `chromeProcesses` | {'int': 5851} |
| `chromeProfiles` | {'int': 5851} |
| `chromeRendererMaxPssKb` | {'int': 5851} |
| `chromeRendererPssKb` | {'int': 5851} |
| `chromeRenderers` | {'int': 5851} |
| `chromeTabs` | {'int': 5851} |
| `chromeTabsProbedProfiles` | {'int': 5851} |
| `chromeUtilityPssKb` | {'int': 5851} |
| `desktopPssKb` | {'int': 5851} |
| `hostPssKb` | {'int': 5851} |
| `kind` | {'str': 5851} |
| `memAvailableKb` | {'int': 5851} |
| `memTotalKb` | {'int': 5851} |
| `otherPssKb` | {'int': 5851} |
| `processes` | {'int': 5851} |
| `pssFallbackProcesses` | {'int': 5851} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
