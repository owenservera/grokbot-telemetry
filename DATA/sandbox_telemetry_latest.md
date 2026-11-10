# sandbox_telemetry_parse — 2026-11-10 21:33:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1332295 lines=2952
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2943 |
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
| `chromeBrowserPssKb` | {'int': 2943} |
| `chromeGpuPssKb` | {'int': 2943} |
| `chromeOtherPssKb` | {'int': 2943} |
| `chromeProcesses` | {'int': 2943} |
| `chromeProfiles` | {'int': 2943} |
| `chromeRendererMaxPssKb` | {'int': 2943} |
| `chromeRendererPssKb` | {'int': 2943} |
| `chromeRenderers` | {'int': 2943} |
| `chromeTabs` | {'int': 2943} |
| `chromeTabsProbedProfiles` | {'int': 2943} |
| `chromeUtilityPssKb` | {'int': 2943} |
| `desktopPssKb` | {'int': 2943} |
| `hostPssKb` | {'int': 2943} |
| `kind` | {'str': 2943} |
| `memAvailableKb` | {'int': 2943} |
| `memTotalKb` | {'int': 2943} |
| `otherPssKb` | {'int': 2943} |
| `processes` | {'int': 2943} |
| `pssFallbackProcesses` | {'int': 2943} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
