# sandbox_telemetry_parse — 2026-11-11 19:31:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1783804 lines=3950
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3941 |
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
| `chromeBrowserPssKb` | {'int': 3941} |
| `chromeGpuPssKb` | {'int': 3941} |
| `chromeOtherPssKb` | {'int': 3941} |
| `chromeProcesses` | {'int': 3941} |
| `chromeProfiles` | {'int': 3941} |
| `chromeRendererMaxPssKb` | {'int': 3941} |
| `chromeRendererPssKb` | {'int': 3941} |
| `chromeRenderers` | {'int': 3941} |
| `chromeTabs` | {'int': 3941} |
| `chromeTabsProbedProfiles` | {'int': 3941} |
| `chromeUtilityPssKb` | {'int': 3941} |
| `desktopPssKb` | {'int': 3941} |
| `hostPssKb` | {'int': 3941} |
| `kind` | {'str': 3941} |
| `memAvailableKb` | {'int': 3941} |
| `memTotalKb` | {'int': 3941} |
| `otherPssKb` | {'int': 3941} |
| `processes` | {'int': 3941} |
| `pssFallbackProcesses` | {'int': 3941} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
