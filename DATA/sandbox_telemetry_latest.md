# sandbox_telemetry_parse — 2026-11-12 21:16:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2333356 lines=5164
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5155 |
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
| `chromeBrowserPssKb` | {'int': 5155} |
| `chromeGpuPssKb` | {'int': 5155} |
| `chromeOtherPssKb` | {'int': 5155} |
| `chromeProcesses` | {'int': 5155} |
| `chromeProfiles` | {'int': 5155} |
| `chromeRendererMaxPssKb` | {'int': 5155} |
| `chromeRendererPssKb` | {'int': 5155} |
| `chromeRenderers` | {'int': 5155} |
| `chromeTabs` | {'int': 5155} |
| `chromeTabsProbedProfiles` | {'int': 5155} |
| `chromeUtilityPssKb` | {'int': 5155} |
| `desktopPssKb` | {'int': 5155} |
| `hostPssKb` | {'int': 5155} |
| `kind` | {'str': 5155} |
| `memAvailableKb` | {'int': 5155} |
| `memTotalKb` | {'int': 5155} |
| `otherPssKb` | {'int': 5155} |
| `processes` | {'int': 5155} |
| `pssFallbackProcesses` | {'int': 5155} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
