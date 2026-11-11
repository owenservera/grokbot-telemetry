# sandbox_telemetry_parse — 2026-11-11 06:26:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1505972 lines=3336
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3327 |
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
| `chromeBrowserPssKb` | {'int': 3327} |
| `chromeGpuPssKb` | {'int': 3327} |
| `chromeOtherPssKb` | {'int': 3327} |
| `chromeProcesses` | {'int': 3327} |
| `chromeProfiles` | {'int': 3327} |
| `chromeRendererMaxPssKb` | {'int': 3327} |
| `chromeRendererPssKb` | {'int': 3327} |
| `chromeRenderers` | {'int': 3327} |
| `chromeTabs` | {'int': 3327} |
| `chromeTabsProbedProfiles` | {'int': 3327} |
| `chromeUtilityPssKb` | {'int': 3327} |
| `desktopPssKb` | {'int': 3327} |
| `hostPssKb` | {'int': 3327} |
| `kind` | {'str': 3327} |
| `memAvailableKb` | {'int': 3327} |
| `memTotalKb` | {'int': 3327} |
| `otherPssKb` | {'int': 3327} |
| `processes` | {'int': 3327} |
| `pssFallbackProcesses` | {'int': 3327} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
