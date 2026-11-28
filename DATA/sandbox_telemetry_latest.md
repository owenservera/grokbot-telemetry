# sandbox_telemetry_parse — 2026-11-28 18:30:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1005531 lines=2229
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2221 |
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
| `chromeBrowserPssKb` | {'int': 2221} |
| `chromeGpuPssKb` | {'int': 2221} |
| `chromeOtherPssKb` | {'int': 2221} |
| `chromeProcesses` | {'int': 2221} |
| `chromeProfiles` | {'int': 2221} |
| `chromeRendererMaxPssKb` | {'int': 2221} |
| `chromeRendererPssKb` | {'int': 2221} |
| `chromeRenderers` | {'int': 2221} |
| `chromeTabs` | {'int': 2221} |
| `chromeTabsProbedProfiles` | {'int': 2221} |
| `chromeUtilityPssKb` | {'int': 2221} |
| `desktopPssKb` | {'int': 2221} |
| `hostPssKb` | {'int': 2221} |
| `kind` | {'str': 2221} |
| `memAvailableKb` | {'int': 2221} |
| `memTotalKb` | {'int': 2221} |
| `otherPssKb` | {'int': 2221} |
| `processes` | {'int': 2221} |
| `pssFallbackProcesses` | {'int': 2221} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
