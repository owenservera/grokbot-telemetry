# sandbox_telemetry_parse — 2026-10-27 04:17:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=316000 lines=702
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 697 |
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
| `chromeBrowserPssKb` | {'int': 697} |
| `chromeGpuPssKb` | {'int': 697} |
| `chromeOtherPssKb` | {'int': 697} |
| `chromeProcesses` | {'int': 697} |
| `chromeProfiles` | {'int': 697} |
| `chromeRendererMaxPssKb` | {'int': 697} |
| `chromeRendererPssKb` | {'int': 697} |
| `chromeRenderers` | {'int': 697} |
| `chromeTabs` | {'int': 697} |
| `chromeTabsProbedProfiles` | {'int': 697} |
| `chromeUtilityPssKb` | {'int': 697} |
| `desktopPssKb` | {'int': 697} |
| `hostPssKb` | {'int': 697} |
| `kind` | {'str': 697} |
| `memAvailableKb` | {'int': 697} |
| `memTotalKb` | {'int': 697} |
| `otherPssKb` | {'int': 697} |
| `processes` | {'int': 697} |
| `pssFallbackProcesses` | {'int': 697} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
