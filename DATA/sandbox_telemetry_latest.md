# sandbox_telemetry_parse — 2026-11-25 14:19:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2791350 lines=6184
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6169 |
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
| `chromeBrowserPssKb` | {'int': 6169} |
| `chromeGpuPssKb` | {'int': 6169} |
| `chromeOtherPssKb` | {'int': 6169} |
| `chromeProcesses` | {'int': 6169} |
| `chromeProfiles` | {'int': 6169} |
| `chromeRendererMaxPssKb` | {'int': 6169} |
| `chromeRendererPssKb` | {'int': 6169} |
| `chromeRenderers` | {'int': 6169} |
| `chromeTabs` | {'int': 6169} |
| `chromeTabsProbedProfiles` | {'int': 6169} |
| `chromeUtilityPssKb` | {'int': 6169} |
| `desktopPssKb` | {'int': 6169} |
| `hostPssKb` | {'int': 6169} |
| `kind` | {'str': 6169} |
| `memAvailableKb` | {'int': 6169} |
| `memTotalKb` | {'int': 6169} |
| `otherPssKb` | {'int': 6169} |
| `processes` | {'int': 6169} |
| `pssFallbackProcesses` | {'int': 6169} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
