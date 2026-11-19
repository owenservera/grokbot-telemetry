# sandbox_telemetry_parse — 2026-11-19 11:25:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1250167 lines=2772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2763 |
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
| `chromeBrowserPssKb` | {'int': 2763} |
| `chromeGpuPssKb` | {'int': 2763} |
| `chromeOtherPssKb` | {'int': 2763} |
| `chromeProcesses` | {'int': 2763} |
| `chromeProfiles` | {'int': 2763} |
| `chromeRendererMaxPssKb` | {'int': 2763} |
| `chromeRendererPssKb` | {'int': 2763} |
| `chromeRenderers` | {'int': 2763} |
| `chromeTabs` | {'int': 2763} |
| `chromeTabsProbedProfiles` | {'int': 2763} |
| `chromeUtilityPssKb` | {'int': 2763} |
| `desktopPssKb` | {'int': 2763} |
| `hostPssKb` | {'int': 2763} |
| `kind` | {'str': 2763} |
| `memAvailableKb` | {'int': 2763} |
| `memTotalKb` | {'int': 2763} |
| `otherPssKb` | {'int': 2763} |
| `processes` | {'int': 2763} |
| `pssFallbackProcesses` | {'int': 2763} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
