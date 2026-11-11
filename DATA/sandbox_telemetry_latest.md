# sandbox_telemetry_parse — 2026-11-11 17:41:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1743065 lines=3860
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3851 |
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
| `chromeBrowserPssKb` | {'int': 3851} |
| `chromeGpuPssKb` | {'int': 3851} |
| `chromeOtherPssKb` | {'int': 3851} |
| `chromeProcesses` | {'int': 3851} |
| `chromeProfiles` | {'int': 3851} |
| `chromeRendererMaxPssKb` | {'int': 3851} |
| `chromeRendererPssKb` | {'int': 3851} |
| `chromeRenderers` | {'int': 3851} |
| `chromeTabs` | {'int': 3851} |
| `chromeTabsProbedProfiles` | {'int': 3851} |
| `chromeUtilityPssKb` | {'int': 3851} |
| `desktopPssKb` | {'int': 3851} |
| `hostPssKb` | {'int': 3851} |
| `kind` | {'str': 3851} |
| `memAvailableKb` | {'int': 3851} |
| `memTotalKb` | {'int': 3851} |
| `otherPssKb` | {'int': 3851} |
| `processes` | {'int': 3851} |
| `pssFallbackProcesses` | {'int': 3851} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
