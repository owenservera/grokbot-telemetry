# sandbox_telemetry_parse — 2026-11-11 11:38:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1610021 lines=3566
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3557 |
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
| `chromeBrowserPssKb` | {'int': 3557} |
| `chromeGpuPssKb` | {'int': 3557} |
| `chromeOtherPssKb` | {'int': 3557} |
| `chromeProcesses` | {'int': 3557} |
| `chromeProfiles` | {'int': 3557} |
| `chromeRendererMaxPssKb` | {'int': 3557} |
| `chromeRendererPssKb` | {'int': 3557} |
| `chromeRenderers` | {'int': 3557} |
| `chromeTabs` | {'int': 3557} |
| `chromeTabsProbedProfiles` | {'int': 3557} |
| `chromeUtilityPssKb` | {'int': 3557} |
| `desktopPssKb` | {'int': 3557} |
| `hostPssKb` | {'int': 3557} |
| `kind` | {'str': 3557} |
| `memAvailableKb` | {'int': 3557} |
| `memTotalKb` | {'int': 3557} |
| `otherPssKb` | {'int': 3557} |
| `processes` | {'int': 3557} |
| `pssFallbackProcesses` | {'int': 3557} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
