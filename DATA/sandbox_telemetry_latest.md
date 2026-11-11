# sandbox_telemetry_parse — 2026-11-11 04:13:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1467086 lines=3250
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3241 |
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
| `chromeBrowserPssKb` | {'int': 3241} |
| `chromeGpuPssKb` | {'int': 3241} |
| `chromeOtherPssKb` | {'int': 3241} |
| `chromeProcesses` | {'int': 3241} |
| `chromeProfiles` | {'int': 3241} |
| `chromeRendererMaxPssKb` | {'int': 3241} |
| `chromeRendererPssKb` | {'int': 3241} |
| `chromeRenderers` | {'int': 3241} |
| `chromeTabs` | {'int': 3241} |
| `chromeTabsProbedProfiles` | {'int': 3241} |
| `chromeUtilityPssKb` | {'int': 3241} |
| `desktopPssKb` | {'int': 3241} |
| `hostPssKb` | {'int': 3241} |
| `kind` | {'str': 3241} |
| `memAvailableKb` | {'int': 3241} |
| `memTotalKb` | {'int': 3241} |
| `otherPssKb` | {'int': 3241} |
| `processes` | {'int': 3241} |
| `pssFallbackProcesses` | {'int': 3241} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
