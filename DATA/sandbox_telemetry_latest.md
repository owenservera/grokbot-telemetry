# sandbox_telemetry_parse — 2026-11-23 21:28:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1993904 lines=4421
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4406 |
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
| `chromeBrowserPssKb` | {'int': 4406} |
| `chromeGpuPssKb` | {'int': 4406} |
| `chromeOtherPssKb` | {'int': 4406} |
| `chromeProcesses` | {'int': 4406} |
| `chromeProfiles` | {'int': 4406} |
| `chromeRendererMaxPssKb` | {'int': 4406} |
| `chromeRendererPssKb` | {'int': 4406} |
| `chromeRenderers` | {'int': 4406} |
| `chromeTabs` | {'int': 4406} |
| `chromeTabsProbedProfiles` | {'int': 4406} |
| `chromeUtilityPssKb` | {'int': 4406} |
| `desktopPssKb` | {'int': 4406} |
| `hostPssKb` | {'int': 4406} |
| `kind` | {'str': 4406} |
| `memAvailableKb` | {'int': 4406} |
| `memTotalKb` | {'int': 4406} |
| `otherPssKb` | {'int': 4406} |
| `processes` | {'int': 4406} |
| `pssFallbackProcesses` | {'int': 4406} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
