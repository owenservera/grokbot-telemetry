# sandbox_telemetry_parse — 2026-11-11 01:26:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1416002 lines=3137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3128 |
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
| `chromeBrowserPssKb` | {'int': 3128} |
| `chromeGpuPssKb` | {'int': 3128} |
| `chromeOtherPssKb` | {'int': 3128} |
| `chromeProcesses` | {'int': 3128} |
| `chromeProfiles` | {'int': 3128} |
| `chromeRendererMaxPssKb` | {'int': 3128} |
| `chromeRendererPssKb` | {'int': 3128} |
| `chromeRenderers` | {'int': 3128} |
| `chromeTabs` | {'int': 3128} |
| `chromeTabsProbedProfiles` | {'int': 3128} |
| `chromeUtilityPssKb` | {'int': 3128} |
| `desktopPssKb` | {'int': 3128} |
| `hostPssKb` | {'int': 3128} |
| `kind` | {'str': 3128} |
| `memAvailableKb` | {'int': 3128} |
| `memTotalKb` | {'int': 3128} |
| `otherPssKb` | {'int': 3128} |
| `processes` | {'int': 3128} |
| `pssFallbackProcesses` | {'int': 3128} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
