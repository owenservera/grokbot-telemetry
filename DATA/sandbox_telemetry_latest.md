# sandbox_telemetry_parse — 2026-11-07 10:37:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=421356 lines=939
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 930 |
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
| `chromeBrowserPssKb` | {'int': 930} |
| `chromeGpuPssKb` | {'int': 930} |
| `chromeOtherPssKb` | {'int': 930} |
| `chromeProcesses` | {'int': 930} |
| `chromeProfiles` | {'int': 930} |
| `chromeRendererMaxPssKb` | {'int': 930} |
| `chromeRendererPssKb` | {'int': 930} |
| `chromeRenderers` | {'int': 930} |
| `chromeTabs` | {'int': 930} |
| `chromeTabsProbedProfiles` | {'int': 930} |
| `chromeUtilityPssKb` | {'int': 930} |
| `desktopPssKb` | {'int': 930} |
| `hostPssKb` | {'int': 930} |
| `kind` | {'str': 930} |
| `memAvailableKb` | {'int': 930} |
| `memTotalKb` | {'int': 930} |
| `otherPssKb` | {'int': 930} |
| `processes` | {'int': 930} |
| `pssFallbackProcesses` | {'int': 930} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
