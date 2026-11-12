# sandbox_telemetry_parse — 2026-11-12 21:39:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2339688 lines=5178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5169 |
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
