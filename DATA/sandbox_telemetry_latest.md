# sandbox_telemetry_parse — 2026-11-24 06:48:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2172105 lines=4815
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4800 |
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
| `chromeBrowserPssKb` | {'int': 4800} |
| `chromeGpuPssKb` | {'int': 4800} |
| `chromeOtherPssKb` | {'int': 4800} |
| `chromeProcesses` | {'int': 4800} |
| `chromeProfiles` | {'int': 4800} |
| `chromeRendererMaxPssKb` | {'int': 4800} |
| `chromeRendererPssKb` | {'int': 4800} |
| `chromeRenderers` | {'int': 4800} |
| `chromeTabs` | {'int': 4800} |
| `chromeTabsProbedProfiles` | {'int': 4800} |
| `chromeUtilityPssKb` | {'int': 4800} |
| `desktopPssKb` | {'int': 4800} |
| `hostPssKb` | {'int': 4800} |
| `kind` | {'str': 4800} |
| `memAvailableKb` | {'int': 4800} |
| `memTotalKb` | {'int': 4800} |
| `otherPssKb` | {'int': 4800} |
| `processes` | {'int': 4800} |
| `pssFallbackProcesses` | {'int': 4800} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
