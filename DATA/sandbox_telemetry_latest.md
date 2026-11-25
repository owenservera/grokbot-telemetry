# sandbox_telemetry_parse — 2026-11-25 07:28:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2649780 lines=5871
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5856 |
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
| `chromeBrowserPssKb` | {'int': 5856} |
| `chromeGpuPssKb` | {'int': 5856} |
| `chromeOtherPssKb` | {'int': 5856} |
| `chromeProcesses` | {'int': 5856} |
| `chromeProfiles` | {'int': 5856} |
| `chromeRendererMaxPssKb` | {'int': 5856} |
| `chromeRendererPssKb` | {'int': 5856} |
| `chromeRenderers` | {'int': 5856} |
| `chromeTabs` | {'int': 5856} |
| `chromeTabsProbedProfiles` | {'int': 5856} |
| `chromeUtilityPssKb` | {'int': 5856} |
| `desktopPssKb` | {'int': 5856} |
| `hostPssKb` | {'int': 5856} |
| `kind` | {'str': 5856} |
| `memAvailableKb` | {'int': 5856} |
| `memTotalKb` | {'int': 5856} |
| `otherPssKb` | {'int': 5856} |
| `processes` | {'int': 5856} |
| `pssFallbackProcesses` | {'int': 5856} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
