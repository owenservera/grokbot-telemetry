# sandbox_telemetry_parse — 2026-11-19 09:41:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1212170 lines=2688
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2679 |
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
| `chromeBrowserPssKb` | {'int': 2679} |
| `chromeGpuPssKb` | {'int': 2679} |
| `chromeOtherPssKb` | {'int': 2679} |
| `chromeProcesses` | {'int': 2679} |
| `chromeProfiles` | {'int': 2679} |
| `chromeRendererMaxPssKb` | {'int': 2679} |
| `chromeRendererPssKb` | {'int': 2679} |
| `chromeRenderers` | {'int': 2679} |
| `chromeTabs` | {'int': 2679} |
| `chromeTabsProbedProfiles` | {'int': 2679} |
| `chromeUtilityPssKb` | {'int': 2679} |
| `desktopPssKb` | {'int': 2679} |
| `hostPssKb` | {'int': 2679} |
| `kind` | {'str': 2679} |
| `memAvailableKb` | {'int': 2679} |
| `memTotalKb` | {'int': 2679} |
| `otherPssKb` | {'int': 2679} |
| `processes` | {'int': 2679} |
| `pssFallbackProcesses` | {'int': 2679} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
