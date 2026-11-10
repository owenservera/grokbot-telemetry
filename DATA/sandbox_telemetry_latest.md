# sandbox_telemetry_parse — 2026-11-10 21:22:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1328672 lines=2944
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2935 |
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
| `chromeBrowserPssKb` | {'int': 2935} |
| `chromeGpuPssKb` | {'int': 2935} |
| `chromeOtherPssKb` | {'int': 2935} |
| `chromeProcesses` | {'int': 2935} |
| `chromeProfiles` | {'int': 2935} |
| `chromeRendererMaxPssKb` | {'int': 2935} |
| `chromeRendererPssKb` | {'int': 2935} |
| `chromeRenderers` | {'int': 2935} |
| `chromeTabs` | {'int': 2935} |
| `chromeTabsProbedProfiles` | {'int': 2935} |
| `chromeUtilityPssKb` | {'int': 2935} |
| `desktopPssKb` | {'int': 2935} |
| `hostPssKb` | {'int': 2935} |
| `kind` | {'str': 2935} |
| `memAvailableKb` | {'int': 2935} |
| `memTotalKb` | {'int': 2935} |
| `otherPssKb` | {'int': 2935} |
| `processes` | {'int': 2935} |
| `pssFallbackProcesses` | {'int': 2935} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
