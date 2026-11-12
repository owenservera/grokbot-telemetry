# sandbox_telemetry_parse — 2026-11-12 17:36:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2246854 lines=4973
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4964 |
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
| `chromeBrowserPssKb` | {'int': 4964} |
| `chromeGpuPssKb` | {'int': 4964} |
| `chromeOtherPssKb` | {'int': 4964} |
| `chromeProcesses` | {'int': 4964} |
| `chromeProfiles` | {'int': 4964} |
| `chromeRendererMaxPssKb` | {'int': 4964} |
| `chromeRendererPssKb` | {'int': 4964} |
| `chromeRenderers` | {'int': 4964} |
| `chromeTabs` | {'int': 4964} |
| `chromeTabsProbedProfiles` | {'int': 4964} |
| `chromeUtilityPssKb` | {'int': 4964} |
| `desktopPssKb` | {'int': 4964} |
| `hostPssKb` | {'int': 4964} |
| `kind` | {'str': 4964} |
| `memAvailableKb` | {'int': 4964} |
| `memTotalKb` | {'int': 4964} |
| `otherPssKb` | {'int': 4964} |
| `processes` | {'int': 4964} |
| `pssFallbackProcesses` | {'int': 4964} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
