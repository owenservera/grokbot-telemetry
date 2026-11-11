# sandbox_telemetry_parse — 2026-11-11 02:27:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1434536 lines=3178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3169 |
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
| `chromeBrowserPssKb` | {'int': 3169} |
| `chromeGpuPssKb` | {'int': 3169} |
| `chromeOtherPssKb` | {'int': 3169} |
| `chromeProcesses` | {'int': 3169} |
| `chromeProfiles` | {'int': 3169} |
| `chromeRendererMaxPssKb` | {'int': 3169} |
| `chromeRendererPssKb` | {'int': 3169} |
| `chromeRenderers` | {'int': 3169} |
| `chromeTabs` | {'int': 3169} |
| `chromeTabsProbedProfiles` | {'int': 3169} |
| `chromeUtilityPssKb` | {'int': 3169} |
| `desktopPssKb` | {'int': 3169} |
| `hostPssKb` | {'int': 3169} |
| `kind` | {'str': 3169} |
| `memAvailableKb` | {'int': 3169} |
| `memTotalKb` | {'int': 3169} |
| `otherPssKb` | {'int': 3169} |
| `processes` | {'int': 3169} |
| `pssFallbackProcesses` | {'int': 3169} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
