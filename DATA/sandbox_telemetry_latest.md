# sandbox_telemetry_parse — 2026-11-26 07:14:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3135533 lines=6945
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6930 |
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
| `chromeBrowserPssKb` | {'int': 6930} |
| `chromeGpuPssKb` | {'int': 6930} |
| `chromeOtherPssKb` | {'int': 6930} |
| `chromeProcesses` | {'int': 6930} |
| `chromeProfiles` | {'int': 6930} |
| `chromeRendererMaxPssKb` | {'int': 6930} |
| `chromeRendererPssKb` | {'int': 6930} |
| `chromeRenderers` | {'int': 6930} |
| `chromeTabs` | {'int': 6930} |
| `chromeTabsProbedProfiles` | {'int': 6930} |
| `chromeUtilityPssKb` | {'int': 6930} |
| `desktopPssKb` | {'int': 6930} |
| `hostPssKb` | {'int': 6930} |
| `kind` | {'str': 6930} |
| `memAvailableKb` | {'int': 6930} |
| `memTotalKb` | {'int': 6930} |
| `otherPssKb` | {'int': 6930} |
| `processes` | {'int': 6930} |
| `pssFallbackProcesses` | {'int': 6930} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
