# sandbox_telemetry_parse — 2026-11-24 18:54:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2404206 lines=5328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5313 |
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
| `chromeBrowserPssKb` | {'int': 5313} |
| `chromeGpuPssKb` | {'int': 5313} |
| `chromeOtherPssKb` | {'int': 5313} |
| `chromeProcesses` | {'int': 5313} |
| `chromeProfiles` | {'int': 5313} |
| `chromeRendererMaxPssKb` | {'int': 5313} |
| `chromeRendererPssKb` | {'int': 5313} |
| `chromeRenderers` | {'int': 5313} |
| `chromeTabs` | {'int': 5313} |
| `chromeTabsProbedProfiles` | {'int': 5313} |
| `chromeUtilityPssKb` | {'int': 5313} |
| `desktopPssKb` | {'int': 5313} |
| `hostPssKb` | {'int': 5313} |
| `kind` | {'str': 5313} |
| `memAvailableKb` | {'int': 5313} |
| `memTotalKb` | {'int': 5313} |
| `otherPssKb` | {'int': 5313} |
| `processes` | {'int': 5313} |
| `pssFallbackProcesses` | {'int': 5313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
