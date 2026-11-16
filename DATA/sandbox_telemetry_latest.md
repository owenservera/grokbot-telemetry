# sandbox_telemetry_parse — 2026-11-16 21:59:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=133963 lines=302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 295 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 295} |
| `chromeGpuPssKb` | {'int': 295} |
| `chromeOtherPssKb` | {'int': 295} |
| `chromeProcesses` | {'int': 295} |
| `chromeProfiles` | {'int': 295} |
| `chromeRendererMaxPssKb` | {'int': 295} |
| `chromeRendererPssKb` | {'int': 295} |
| `chromeRenderers` | {'int': 295} |
| `chromeTabs` | {'int': 295} |
| `chromeTabsProbedProfiles` | {'int': 295} |
| `chromeUtilityPssKb` | {'int': 295} |
| `desktopPssKb` | {'int': 295} |
| `hostPssKb` | {'int': 295} |
| `kind` | {'str': 295} |
| `memAvailableKb` | {'int': 295} |
| `memTotalKb` | {'int': 295} |
| `otherPssKb` | {'int': 295} |
| `processes` | {'int': 295} |
| `pssFallbackProcesses` | {'int': 295} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
