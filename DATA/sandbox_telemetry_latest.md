# sandbox_telemetry_parse — 2026-10-27 04:45:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=327300 lines=727
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 722 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 722} |
| `chromeGpuPssKb` | {'int': 722} |
| `chromeOtherPssKb` | {'int': 722} |
| `chromeProcesses` | {'int': 722} |
| `chromeProfiles` | {'int': 722} |
| `chromeRendererMaxPssKb` | {'int': 722} |
| `chromeRendererPssKb` | {'int': 722} |
| `chromeRenderers` | {'int': 722} |
| `chromeTabs` | {'int': 722} |
| `chromeTabsProbedProfiles` | {'int': 722} |
| `chromeUtilityPssKb` | {'int': 722} |
| `desktopPssKb` | {'int': 722} |
| `hostPssKb` | {'int': 722} |
| `kind` | {'str': 722} |
| `memAvailableKb` | {'int': 722} |
| `memTotalKb` | {'int': 722} |
| `otherPssKb` | {'int': 722} |
| `processes` | {'int': 722} |
| `pssFallbackProcesses` | {'int': 722} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
