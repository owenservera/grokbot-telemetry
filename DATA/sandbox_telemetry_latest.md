# sandbox_telemetry_parse — 2026-11-24 15:23:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2338986 lines=5184
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5169 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5169} |
| `chromeGpuPssKb` | {'int': 5169} |
| `chromeOtherPssKb` | {'int': 5169} |
| `chromeProcesses` | {'int': 5169} |
| `chromeProfiles` | {'int': 5169} |
| `chromeRendererMaxPssKb` | {'int': 5169} |
| `chromeRendererPssKb` | {'int': 5169} |
| `chromeRenderers` | {'int': 5169} |
| `chromeTabs` | {'int': 5169} |
| `chromeTabsProbedProfiles` | {'int': 5169} |
| `chromeUtilityPssKb` | {'int': 5169} |
| `desktopPssKb` | {'int': 5169} |
| `hostPssKb` | {'int': 5169} |
| `kind` | {'str': 5169} |
| `memAvailableKb` | {'int': 5169} |
| `memTotalKb` | {'int': 5169} |
| `otherPssKb` | {'int': 5169} |
| `processes` | {'int': 5169} |
| `pssFallbackProcesses` | {'int': 5169} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
