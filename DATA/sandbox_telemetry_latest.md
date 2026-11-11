# sandbox_telemetry_parse — 2026-11-11 12:19:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1627683 lines=3605
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3596 |
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
| `chromeBrowserPssKb` | {'int': 3596} |
| `chromeGpuPssKb` | {'int': 3596} |
| `chromeOtherPssKb` | {'int': 3596} |
| `chromeProcesses` | {'int': 3596} |
| `chromeProfiles` | {'int': 3596} |
| `chromeRendererMaxPssKb` | {'int': 3596} |
| `chromeRendererPssKb` | {'int': 3596} |
| `chromeRenderers` | {'int': 3596} |
| `chromeTabs` | {'int': 3596} |
| `chromeTabsProbedProfiles` | {'int': 3596} |
| `chromeUtilityPssKb` | {'int': 3596} |
| `desktopPssKb` | {'int': 3596} |
| `hostPssKb` | {'int': 3596} |
| `kind` | {'str': 3596} |
| `memAvailableKb` | {'int': 3596} |
| `memTotalKb` | {'int': 3596} |
| `otherPssKb` | {'int': 3596} |
| `processes` | {'int': 3596} |
| `pssFallbackProcesses` | {'int': 3596} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
