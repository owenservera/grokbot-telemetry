# sandbox_telemetry_parse — 2026-11-19 04:55:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1125804 lines=2497
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2488 |
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
| `chromeBrowserPssKb` | {'int': 2488} |
| `chromeGpuPssKb` | {'int': 2488} |
| `chromeOtherPssKb` | {'int': 2488} |
| `chromeProcesses` | {'int': 2488} |
| `chromeProfiles` | {'int': 2488} |
| `chromeRendererMaxPssKb` | {'int': 2488} |
| `chromeRendererPssKb` | {'int': 2488} |
| `chromeRenderers` | {'int': 2488} |
| `chromeTabs` | {'int': 2488} |
| `chromeTabsProbedProfiles` | {'int': 2488} |
| `chromeUtilityPssKb` | {'int': 2488} |
| `desktopPssKb` | {'int': 2488} |
| `hostPssKb` | {'int': 2488} |
| `kind` | {'str': 2488} |
| `memAvailableKb` | {'int': 2488} |
| `memTotalKb` | {'int': 2488} |
| `otherPssKb` | {'int': 2488} |
| `processes` | {'int': 2488} |
| `pssFallbackProcesses` | {'int': 2488} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
