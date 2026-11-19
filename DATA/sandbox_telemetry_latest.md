# sandbox_telemetry_parse — 2026-11-19 23:52:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1495569 lines=3316
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3305 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3305} |
| `chromeGpuPssKb` | {'int': 3305} |
| `chromeOtherPssKb` | {'int': 3305} |
| `chromeProcesses` | {'int': 3305} |
| `chromeProfiles` | {'int': 3305} |
| `chromeRendererMaxPssKb` | {'int': 3305} |
| `chromeRendererPssKb` | {'int': 3305} |
| `chromeRenderers` | {'int': 3305} |
| `chromeTabs` | {'int': 3305} |
| `chromeTabsProbedProfiles` | {'int': 3305} |
| `chromeUtilityPssKb` | {'int': 3305} |
| `desktopPssKb` | {'int': 3305} |
| `hostPssKb` | {'int': 3305} |
| `kind` | {'str': 3305} |
| `memAvailableKb` | {'int': 3305} |
| `memTotalKb` | {'int': 3305} |
| `otherPssKb` | {'int': 3305} |
| `processes` | {'int': 3305} |
| `pssFallbackProcesses` | {'int': 3305} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
