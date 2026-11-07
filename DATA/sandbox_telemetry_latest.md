# sandbox_telemetry_parse — 2026-11-07 01:09:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=247241 lines=554
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 545 |
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
| `chromeBrowserPssKb` | {'int': 545} |
| `chromeGpuPssKb` | {'int': 545} |
| `chromeOtherPssKb` | {'int': 545} |
| `chromeProcesses` | {'int': 545} |
| `chromeProfiles` | {'int': 545} |
| `chromeRendererMaxPssKb` | {'int': 545} |
| `chromeRendererPssKb` | {'int': 545} |
| `chromeRenderers` | {'int': 545} |
| `chromeTabs` | {'int': 545} |
| `chromeTabsProbedProfiles` | {'int': 545} |
| `chromeUtilityPssKb` | {'int': 545} |
| `desktopPssKb` | {'int': 545} |
| `hostPssKb` | {'int': 545} |
| `kind` | {'str': 545} |
| `memAvailableKb` | {'int': 545} |
| `memTotalKb` | {'int': 545} |
| `otherPssKb` | {'int': 545} |
| `processes` | {'int': 545} |
| `pssFallbackProcesses` | {'int': 545} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
