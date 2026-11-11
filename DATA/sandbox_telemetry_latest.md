# sandbox_telemetry_parse — 2026-11-11 18:17:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1757555 lines=3892
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3883 |
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
| `chromeBrowserPssKb` | {'int': 3883} |
| `chromeGpuPssKb` | {'int': 3883} |
| `chromeOtherPssKb` | {'int': 3883} |
| `chromeProcesses` | {'int': 3883} |
| `chromeProfiles` | {'int': 3883} |
| `chromeRendererMaxPssKb` | {'int': 3883} |
| `chromeRendererPssKb` | {'int': 3883} |
| `chromeRenderers` | {'int': 3883} |
| `chromeTabs` | {'int': 3883} |
| `chromeTabsProbedProfiles` | {'int': 3883} |
| `chromeUtilityPssKb` | {'int': 3883} |
| `desktopPssKb` | {'int': 3883} |
| `hostPssKb` | {'int': 3883} |
| `kind` | {'str': 3883} |
| `memAvailableKb` | {'int': 3883} |
| `memTotalKb` | {'int': 3883} |
| `otherPssKb` | {'int': 3883} |
| `processes` | {'int': 3883} |
| `pssFallbackProcesses` | {'int': 3883} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
