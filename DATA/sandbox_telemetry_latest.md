# sandbox_telemetry_parse — 2026-11-27 00:31:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=155318 lines=350
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 342 |
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
| `chromeBrowserPssKb` | {'int': 342} |
| `chromeGpuPssKb` | {'int': 342} |
| `chromeOtherPssKb` | {'int': 342} |
| `chromeProcesses` | {'int': 342} |
| `chromeProfiles` | {'int': 342} |
| `chromeRendererMaxPssKb` | {'int': 342} |
| `chromeRendererPssKb` | {'int': 342} |
| `chromeRenderers` | {'int': 342} |
| `chromeTabs` | {'int': 342} |
| `chromeTabsProbedProfiles` | {'int': 342} |
| `chromeUtilityPssKb` | {'int': 342} |
| `desktopPssKb` | {'int': 342} |
| `hostPssKb` | {'int': 342} |
| `kind` | {'str': 342} |
| `memAvailableKb` | {'int': 342} |
| `memTotalKb` | {'int': 342} |
| `otherPssKb` | {'int': 342} |
| `processes` | {'int': 342} |
| `pssFallbackProcesses` | {'int': 342} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
