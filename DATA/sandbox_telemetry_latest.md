# sandbox_telemetry_parse — 2026-11-25 09:07:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2685528 lines=5950
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5935 |
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
| `chromeBrowserPssKb` | {'int': 5935} |
| `chromeGpuPssKb` | {'int': 5935} |
| `chromeOtherPssKb` | {'int': 5935} |
| `chromeProcesses` | {'int': 5935} |
| `chromeProfiles` | {'int': 5935} |
| `chromeRendererMaxPssKb` | {'int': 5935} |
| `chromeRendererPssKb` | {'int': 5935} |
| `chromeRenderers` | {'int': 5935} |
| `chromeTabs` | {'int': 5935} |
| `chromeTabsProbedProfiles` | {'int': 5935} |
| `chromeUtilityPssKb` | {'int': 5935} |
| `desktopPssKb` | {'int': 5935} |
| `hostPssKb` | {'int': 5935} |
| `kind` | {'str': 5935} |
| `memAvailableKb` | {'int': 5935} |
| `memTotalKb` | {'int': 5935} |
| `otherPssKb` | {'int': 5935} |
| `processes` | {'int': 5935} |
| `pssFallbackProcesses` | {'int': 5935} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
