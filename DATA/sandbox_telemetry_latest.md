# sandbox_telemetry_parse — 2026-11-09 23:00:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=876111 lines=1944
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1935 |
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
| `chromeBrowserPssKb` | {'int': 1935} |
| `chromeGpuPssKb` | {'int': 1935} |
| `chromeOtherPssKb` | {'int': 1935} |
| `chromeProcesses` | {'int': 1935} |
| `chromeProfiles` | {'int': 1935} |
| `chromeRendererMaxPssKb` | {'int': 1935} |
| `chromeRendererPssKb` | {'int': 1935} |
| `chromeRenderers` | {'int': 1935} |
| `chromeTabs` | {'int': 1935} |
| `chromeTabsProbedProfiles` | {'int': 1935} |
| `chromeUtilityPssKb` | {'int': 1935} |
| `desktopPssKb` | {'int': 1935} |
| `hostPssKb` | {'int': 1935} |
| `kind` | {'str': 1935} |
| `memAvailableKb` | {'int': 1935} |
| `memTotalKb` | {'int': 1935} |
| `otherPssKb` | {'int': 1935} |
| `processes` | {'int': 1935} |
| `pssFallbackProcesses` | {'int': 1935} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
