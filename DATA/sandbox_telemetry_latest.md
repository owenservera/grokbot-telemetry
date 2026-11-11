# sandbox_telemetry_parse — 2026-11-11 19:12:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1775650 lines=3932
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3923 |
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
| `chromeBrowserPssKb` | {'int': 3923} |
| `chromeGpuPssKb` | {'int': 3923} |
| `chromeOtherPssKb` | {'int': 3923} |
| `chromeProcesses` | {'int': 3923} |
| `chromeProfiles` | {'int': 3923} |
| `chromeRendererMaxPssKb` | {'int': 3923} |
| `chromeRendererPssKb` | {'int': 3923} |
| `chromeRenderers` | {'int': 3923} |
| `chromeTabs` | {'int': 3923} |
| `chromeTabsProbedProfiles` | {'int': 3923} |
| `chromeUtilityPssKb` | {'int': 3923} |
| `desktopPssKb` | {'int': 3923} |
| `hostPssKb` | {'int': 3923} |
| `kind` | {'str': 3923} |
| `memAvailableKb` | {'int': 3923} |
| `memTotalKb` | {'int': 3923} |
| `otherPssKb` | {'int': 3923} |
| `processes` | {'int': 3923} |
| `pssFallbackProcesses` | {'int': 3923} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
