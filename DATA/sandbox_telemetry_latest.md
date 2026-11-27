# sandbox_telemetry_parse — 2026-11-27 03:53:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=223622 lines=501
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 493 |
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
| `chromeBrowserPssKb` | {'int': 493} |
| `chromeGpuPssKb` | {'int': 493} |
| `chromeOtherPssKb` | {'int': 493} |
| `chromeProcesses` | {'int': 493} |
| `chromeProfiles` | {'int': 493} |
| `chromeRendererMaxPssKb` | {'int': 493} |
| `chromeRendererPssKb` | {'int': 493} |
| `chromeRenderers` | {'int': 493} |
| `chromeTabs` | {'int': 493} |
| `chromeTabsProbedProfiles` | {'int': 493} |
| `chromeUtilityPssKb` | {'int': 493} |
| `desktopPssKb` | {'int': 493} |
| `hostPssKb` | {'int': 493} |
| `kind` | {'str': 493} |
| `memAvailableKb` | {'int': 493} |
| `memTotalKb` | {'int': 493} |
| `otherPssKb` | {'int': 493} |
| `processes` | {'int': 493} |
| `pssFallbackProcesses` | {'int': 493} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
