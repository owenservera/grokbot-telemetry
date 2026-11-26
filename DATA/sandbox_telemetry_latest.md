# sandbox_telemetry_parse — 2026-11-26 17:48:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=17369 lines=45
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 37 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 37} |
| `chromeGpuPssKb` | {'int': 37} |
| `chromeOtherPssKb` | {'int': 37} |
| `chromeProcesses` | {'int': 37} |
| `chromeProfiles` | {'int': 37} |
| `chromeRendererMaxPssKb` | {'int': 37} |
| `chromeRendererPssKb` | {'int': 37} |
| `chromeRenderers` | {'int': 37} |
| `chromeTabs` | {'int': 37} |
| `chromeTabsProbedProfiles` | {'int': 37} |
| `chromeUtilityPssKb` | {'int': 37} |
| `desktopPssKb` | {'int': 37} |
| `hostPssKb` | {'int': 37} |
| `kind` | {'str': 37} |
| `memAvailableKb` | {'int': 37} |
| `memTotalKb` | {'int': 37} |
| `otherPssKb` | {'int': 37} |
| `processes` | {'int': 37} |
| `pssFallbackProcesses` | {'int': 37} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
