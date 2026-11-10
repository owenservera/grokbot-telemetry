# sandbox_telemetry_parse — 2026-11-10 06:45:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1026273 lines=2276
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2267 |
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
| `chromeBrowserPssKb` | {'int': 2267} |
| `chromeGpuPssKb` | {'int': 2267} |
| `chromeOtherPssKb` | {'int': 2267} |
| `chromeProcesses` | {'int': 2267} |
| `chromeProfiles` | {'int': 2267} |
| `chromeRendererMaxPssKb` | {'int': 2267} |
| `chromeRendererPssKb` | {'int': 2267} |
| `chromeRenderers` | {'int': 2267} |
| `chromeTabs` | {'int': 2267} |
| `chromeTabsProbedProfiles` | {'int': 2267} |
| `chromeUtilityPssKb` | {'int': 2267} |
| `desktopPssKb` | {'int': 2267} |
| `hostPssKb` | {'int': 2267} |
| `kind` | {'str': 2267} |
| `memAvailableKb` | {'int': 2267} |
| `memTotalKb` | {'int': 2267} |
| `otherPssKb` | {'int': 2267} |
| `processes` | {'int': 2267} |
| `pssFallbackProcesses` | {'int': 2267} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
