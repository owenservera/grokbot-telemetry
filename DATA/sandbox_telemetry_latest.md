# sandbox_telemetry_parse — 2026-11-17 21:27:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=546778 lines=1215
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1208 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1208} |
| `chromeGpuPssKb` | {'int': 1208} |
| `chromeOtherPssKb` | {'int': 1208} |
| `chromeProcesses` | {'int': 1208} |
| `chromeProfiles` | {'int': 1208} |
| `chromeRendererMaxPssKb` | {'int': 1208} |
| `chromeRendererPssKb` | {'int': 1208} |
| `chromeRenderers` | {'int': 1208} |
| `chromeTabs` | {'int': 1208} |
| `chromeTabsProbedProfiles` | {'int': 1208} |
| `chromeUtilityPssKb` | {'int': 1208} |
| `desktopPssKb` | {'int': 1208} |
| `hostPssKb` | {'int': 1208} |
| `kind` | {'str': 1208} |
| `memAvailableKb` | {'int': 1208} |
| `memTotalKb` | {'int': 1208} |
| `otherPssKb` | {'int': 1208} |
| `processes` | {'int': 1208} |
| `pssFallbackProcesses` | {'int': 1208} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
