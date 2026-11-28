# sandbox_telemetry_parse — 2026-11-28 17:19:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=981069 lines=2175
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2167 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 2167} |
| `chromeGpuPssKb` | {'int': 2167} |
| `chromeOtherPssKb` | {'int': 2167} |
| `chromeProcesses` | {'int': 2167} |
| `chromeProfiles` | {'int': 2167} |
| `chromeRendererMaxPssKb` | {'int': 2167} |
| `chromeRendererPssKb` | {'int': 2167} |
| `chromeRenderers` | {'int': 2167} |
| `chromeTabs` | {'int': 2167} |
| `chromeTabsProbedProfiles` | {'int': 2167} |
| `chromeUtilityPssKb` | {'int': 2167} |
| `desktopPssKb` | {'int': 2167} |
| `hostPssKb` | {'int': 2167} |
| `kind` | {'str': 2167} |
| `memAvailableKb` | {'int': 2167} |
| `memTotalKb` | {'int': 2167} |
| `otherPssKb` | {'int': 2167} |
| `processes` | {'int': 2167} |
| `pssFallbackProcesses` | {'int': 2167} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
