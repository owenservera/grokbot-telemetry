# sandbox_telemetry_parse — 2026-11-24 04:25:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2128237 lines=4718
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4703 |
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
| `chromeBrowserPssKb` | {'int': 4703} |
| `chromeGpuPssKb` | {'int': 4703} |
| `chromeOtherPssKb` | {'int': 4703} |
| `chromeProcesses` | {'int': 4703} |
| `chromeProfiles` | {'int': 4703} |
| `chromeRendererMaxPssKb` | {'int': 4703} |
| `chromeRendererPssKb` | {'int': 4703} |
| `chromeRenderers` | {'int': 4703} |
| `chromeTabs` | {'int': 4703} |
| `chromeTabsProbedProfiles` | {'int': 4703} |
| `chromeUtilityPssKb` | {'int': 4703} |
| `desktopPssKb` | {'int': 4703} |
| `hostPssKb` | {'int': 4703} |
| `kind` | {'str': 4703} |
| `memAvailableKb` | {'int': 4703} |
| `memTotalKb` | {'int': 4703} |
| `otherPssKb` | {'int': 4703} |
| `processes` | {'int': 4703} |
| `pssFallbackProcesses` | {'int': 4703} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
