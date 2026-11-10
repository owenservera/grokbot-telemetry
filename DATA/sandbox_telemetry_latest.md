# sandbox_telemetry_parse — 2026-11-10 10:33:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1099589 lines=2438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2429 |
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
| `chromeBrowserPssKb` | {'int': 2429} |
| `chromeGpuPssKb` | {'int': 2429} |
| `chromeOtherPssKb` | {'int': 2429} |
| `chromeProcesses` | {'int': 2429} |
| `chromeProfiles` | {'int': 2429} |
| `chromeRendererMaxPssKb` | {'int': 2429} |
| `chromeRendererPssKb` | {'int': 2429} |
| `chromeRenderers` | {'int': 2429} |
| `chromeTabs` | {'int': 2429} |
| `chromeTabsProbedProfiles` | {'int': 2429} |
| `chromeUtilityPssKb` | {'int': 2429} |
| `desktopPssKb` | {'int': 2429} |
| `hostPssKb` | {'int': 2429} |
| `kind` | {'str': 2429} |
| `memAvailableKb` | {'int': 2429} |
| `memTotalKb` | {'int': 2429} |
| `otherPssKb` | {'int': 2429} |
| `processes` | {'int': 2429} |
| `pssFallbackProcesses` | {'int': 2429} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
