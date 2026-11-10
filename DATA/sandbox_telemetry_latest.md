# sandbox_telemetry_parse — 2026-11-10 14:05:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1172480 lines=2599
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2590 |
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
| `chromeBrowserPssKb` | {'int': 2590} |
| `chromeGpuPssKb` | {'int': 2590} |
| `chromeOtherPssKb` | {'int': 2590} |
| `chromeProcesses` | {'int': 2590} |
| `chromeProfiles` | {'int': 2590} |
| `chromeRendererMaxPssKb` | {'int': 2590} |
| `chromeRendererPssKb` | {'int': 2590} |
| `chromeRenderers` | {'int': 2590} |
| `chromeTabs` | {'int': 2590} |
| `chromeTabsProbedProfiles` | {'int': 2590} |
| `chromeUtilityPssKb` | {'int': 2590} |
| `desktopPssKb` | {'int': 2590} |
| `hostPssKb` | {'int': 2590} |
| `kind` | {'str': 2590} |
| `memAvailableKb` | {'int': 2590} |
| `memTotalKb` | {'int': 2590} |
| `otherPssKb` | {'int': 2590} |
| `processes` | {'int': 2590} |
| `pssFallbackProcesses` | {'int': 2590} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
