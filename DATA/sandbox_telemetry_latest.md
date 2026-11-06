# sandbox_telemetry_parse — 2026-11-06 13:57:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=39895 lines=94
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 87 |
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
| `chromeBrowserPssKb` | {'int': 87} |
| `chromeGpuPssKb` | {'int': 87} |
| `chromeOtherPssKb` | {'int': 87} |
| `chromeProcesses` | {'int': 87} |
| `chromeProfiles` | {'int': 87} |
| `chromeRendererMaxPssKb` | {'int': 87} |
| `chromeRendererPssKb` | {'int': 87} |
| `chromeRenderers` | {'int': 87} |
| `chromeTabs` | {'int': 87} |
| `chromeTabsProbedProfiles` | {'int': 87} |
| `chromeUtilityPssKb` | {'int': 87} |
| `desktopPssKb` | {'int': 87} |
| `hostPssKb` | {'int': 87} |
| `kind` | {'str': 87} |
| `memAvailableKb` | {'int': 87} |
| `memTotalKb` | {'int': 87} |
| `otherPssKb` | {'int': 87} |
| `processes` | {'int': 87} |
| `pssFallbackProcesses` | {'int': 87} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
