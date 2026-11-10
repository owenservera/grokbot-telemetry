# sandbox_telemetry_parse — 2026-11-10 09:41:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1082379 lines=2400
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2391 |
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
| `chromeBrowserPssKb` | {'int': 2391} |
| `chromeGpuPssKb` | {'int': 2391} |
| `chromeOtherPssKb` | {'int': 2391} |
| `chromeProcesses` | {'int': 2391} |
| `chromeProfiles` | {'int': 2391} |
| `chromeRendererMaxPssKb` | {'int': 2391} |
| `chromeRendererPssKb` | {'int': 2391} |
| `chromeRenderers` | {'int': 2391} |
| `chromeTabs` | {'int': 2391} |
| `chromeTabsProbedProfiles` | {'int': 2391} |
| `chromeUtilityPssKb` | {'int': 2391} |
| `desktopPssKb` | {'int': 2391} |
| `hostPssKb` | {'int': 2391} |
| `kind` | {'str': 2391} |
| `memAvailableKb` | {'int': 2391} |
| `memTotalKb` | {'int': 2391} |
| `otherPssKb` | {'int': 2391} |
| `processes` | {'int': 2391} |
| `pssFallbackProcesses` | {'int': 2391} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
