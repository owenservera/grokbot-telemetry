# sandbox_telemetry_parse — 2026-11-10 04:08:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=981973 lines=2178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2169 |
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
| `chromeBrowserPssKb` | {'int': 2169} |
| `chromeGpuPssKb` | {'int': 2169} |
| `chromeOtherPssKb` | {'int': 2169} |
| `chromeProcesses` | {'int': 2169} |
| `chromeProfiles` | {'int': 2169} |
| `chromeRendererMaxPssKb` | {'int': 2169} |
| `chromeRendererPssKb` | {'int': 2169} |
| `chromeRenderers` | {'int': 2169} |
| `chromeTabs` | {'int': 2169} |
| `chromeTabsProbedProfiles` | {'int': 2169} |
| `chromeUtilityPssKb` | {'int': 2169} |
| `desktopPssKb` | {'int': 2169} |
| `hostPssKb` | {'int': 2169} |
| `kind` | {'str': 2169} |
| `memAvailableKb` | {'int': 2169} |
| `memTotalKb` | {'int': 2169} |
| `otherPssKb` | {'int': 2169} |
| `processes` | {'int': 2169} |
| `pssFallbackProcesses` | {'int': 2169} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
