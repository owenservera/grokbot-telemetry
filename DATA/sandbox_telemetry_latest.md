# sandbox_telemetry_parse — 2026-11-11 22:17:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1844919 lines=4085
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4076 |
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
| `chromeBrowserPssKb` | {'int': 4076} |
| `chromeGpuPssKb` | {'int': 4076} |
| `chromeOtherPssKb` | {'int': 4076} |
| `chromeProcesses` | {'int': 4076} |
| `chromeProfiles` | {'int': 4076} |
| `chromeRendererMaxPssKb` | {'int': 4076} |
| `chromeRendererPssKb` | {'int': 4076} |
| `chromeRenderers` | {'int': 4076} |
| `chromeTabs` | {'int': 4076} |
| `chromeTabsProbedProfiles` | {'int': 4076} |
| `chromeUtilityPssKb` | {'int': 4076} |
| `desktopPssKb` | {'int': 4076} |
| `hostPssKb` | {'int': 4076} |
| `kind` | {'str': 4076} |
| `memAvailableKb` | {'int': 4076} |
| `memTotalKb` | {'int': 4076} |
| `otherPssKb` | {'int': 4076} |
| `processes` | {'int': 4076} |
| `pssFallbackProcesses` | {'int': 4076} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
