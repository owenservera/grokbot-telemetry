# sandbox_telemetry_parse — 2026-11-19 08:22:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1184584 lines=2627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2618 |
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
| `chromeBrowserPssKb` | {'int': 2618} |
| `chromeGpuPssKb` | {'int': 2618} |
| `chromeOtherPssKb` | {'int': 2618} |
| `chromeProcesses` | {'int': 2618} |
| `chromeProfiles` | {'int': 2618} |
| `chromeRendererMaxPssKb` | {'int': 2618} |
| `chromeRendererPssKb` | {'int': 2618} |
| `chromeRenderers` | {'int': 2618} |
| `chromeTabs` | {'int': 2618} |
| `chromeTabsProbedProfiles` | {'int': 2618} |
| `chromeUtilityPssKb` | {'int': 2618} |
| `desktopPssKb` | {'int': 2618} |
| `hostPssKb` | {'int': 2618} |
| `kind` | {'str': 2618} |
| `memAvailableKb` | {'int': 2618} |
| `memTotalKb` | {'int': 2618} |
| `otherPssKb` | {'int': 2618} |
| `processes` | {'int': 2618} |
| `pssFallbackProcesses` | {'int': 2618} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
