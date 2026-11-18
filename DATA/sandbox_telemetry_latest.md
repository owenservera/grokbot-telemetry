# sandbox_telemetry_parse — 2026-11-18 01:35:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=622739 lines=1383
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1376 |
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
| `chromeBrowserPssKb` | {'int': 1376} |
| `chromeGpuPssKb` | {'int': 1376} |
| `chromeOtherPssKb` | {'int': 1376} |
| `chromeProcesses` | {'int': 1376} |
| `chromeProfiles` | {'int': 1376} |
| `chromeRendererMaxPssKb` | {'int': 1376} |
| `chromeRendererPssKb` | {'int': 1376} |
| `chromeRenderers` | {'int': 1376} |
| `chromeTabs` | {'int': 1376} |
| `chromeTabsProbedProfiles` | {'int': 1376} |
| `chromeUtilityPssKb` | {'int': 1376} |
| `desktopPssKb` | {'int': 1376} |
| `hostPssKb` | {'int': 1376} |
| `kind` | {'str': 1376} |
| `memAvailableKb` | {'int': 1376} |
| `memTotalKb` | {'int': 1376} |
| `otherPssKb` | {'int': 1376} |
| `processes` | {'int': 1376} |
| `pssFallbackProcesses` | {'int': 1376} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
