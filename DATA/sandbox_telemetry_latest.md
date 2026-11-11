# sandbox_telemetry_parse — 2026-11-11 15:59:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1705497 lines=3777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3768 |
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
| `chromeBrowserPssKb` | {'int': 3768} |
| `chromeGpuPssKb` | {'int': 3768} |
| `chromeOtherPssKb` | {'int': 3768} |
| `chromeProcesses` | {'int': 3768} |
| `chromeProfiles` | {'int': 3768} |
| `chromeRendererMaxPssKb` | {'int': 3768} |
| `chromeRendererPssKb` | {'int': 3768} |
| `chromeRenderers` | {'int': 3768} |
| `chromeTabs` | {'int': 3768} |
| `chromeTabsProbedProfiles` | {'int': 3768} |
| `chromeUtilityPssKb` | {'int': 3768} |
| `desktopPssKb` | {'int': 3768} |
| `hostPssKb` | {'int': 3768} |
| `kind` | {'str': 3768} |
| `memAvailableKb` | {'int': 3768} |
| `memTotalKb` | {'int': 3768} |
| `otherPssKb` | {'int': 3768} |
| `processes` | {'int': 3768} |
| `pssFallbackProcesses` | {'int': 3768} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
