# sandbox_telemetry_parse — 2026-11-19 18:49:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1397865 lines=3100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3089 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3089} |
| `chromeGpuPssKb` | {'int': 3089} |
| `chromeOtherPssKb` | {'int': 3089} |
| `chromeProcesses` | {'int': 3089} |
| `chromeProfiles` | {'int': 3089} |
| `chromeRendererMaxPssKb` | {'int': 3089} |
| `chromeRendererPssKb` | {'int': 3089} |
| `chromeRenderers` | {'int': 3089} |
| `chromeTabs` | {'int': 3089} |
| `chromeTabsProbedProfiles` | {'int': 3089} |
| `chromeUtilityPssKb` | {'int': 3089} |
| `desktopPssKb` | {'int': 3089} |
| `hostPssKb` | {'int': 3089} |
| `kind` | {'str': 3089} |
| `memAvailableKb` | {'int': 3089} |
| `memTotalKb` | {'int': 3089} |
| `otherPssKb` | {'int': 3089} |
| `processes` | {'int': 3089} |
| `pssFallbackProcesses` | {'int': 3089} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
