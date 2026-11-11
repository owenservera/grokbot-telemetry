# sandbox_telemetry_parse — 2026-11-12 00:21:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1886997 lines=4178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4169 |
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
| `chromeBrowserPssKb` | {'int': 4169} |
| `chromeGpuPssKb` | {'int': 4169} |
| `chromeOtherPssKb` | {'int': 4169} |
| `chromeProcesses` | {'int': 4169} |
| `chromeProfiles` | {'int': 4169} |
| `chromeRendererMaxPssKb` | {'int': 4169} |
| `chromeRendererPssKb` | {'int': 4169} |
| `chromeRenderers` | {'int': 4169} |
| `chromeTabs` | {'int': 4169} |
| `chromeTabsProbedProfiles` | {'int': 4169} |
| `chromeUtilityPssKb` | {'int': 4169} |
| `desktopPssKb` | {'int': 4169} |
| `hostPssKb` | {'int': 4169} |
| `kind` | {'str': 4169} |
| `memAvailableKb` | {'int': 4169} |
| `memTotalKb` | {'int': 4169} |
| `otherPssKb` | {'int': 4169} |
| `processes` | {'int': 4169} |
| `pssFallbackProcesses` | {'int': 4169} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
