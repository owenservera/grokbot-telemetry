# sandbox_telemetry_parse — 2026-11-11 08:28:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1543047 lines=3418
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3409 |
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
| `chromeBrowserPssKb` | {'int': 3409} |
| `chromeGpuPssKb` | {'int': 3409} |
| `chromeOtherPssKb` | {'int': 3409} |
| `chromeProcesses` | {'int': 3409} |
| `chromeProfiles` | {'int': 3409} |
| `chromeRendererMaxPssKb` | {'int': 3409} |
| `chromeRendererPssKb` | {'int': 3409} |
| `chromeRenderers` | {'int': 3409} |
| `chromeTabs` | {'int': 3409} |
| `chromeTabsProbedProfiles` | {'int': 3409} |
| `chromeUtilityPssKb` | {'int': 3409} |
| `desktopPssKb` | {'int': 3409} |
| `hostPssKb` | {'int': 3409} |
| `kind` | {'str': 3409} |
| `memAvailableKb` | {'int': 3409} |
| `memTotalKb` | {'int': 3409} |
| `otherPssKb` | {'int': 3409} |
| `processes` | {'int': 3409} |
| `pssFallbackProcesses` | {'int': 3409} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
