# sandbox_telemetry_parse — 2026-11-16 21:28:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=124019 lines=280
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 273 |
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
| `chromeBrowserPssKb` | {'int': 273} |
| `chromeGpuPssKb` | {'int': 273} |
| `chromeOtherPssKb` | {'int': 273} |
| `chromeProcesses` | {'int': 273} |
| `chromeProfiles` | {'int': 273} |
| `chromeRendererMaxPssKb` | {'int': 273} |
| `chromeRendererPssKb` | {'int': 273} |
| `chromeRenderers` | {'int': 273} |
| `chromeTabs` | {'int': 273} |
| `chromeTabsProbedProfiles` | {'int': 273} |
| `chromeUtilityPssKb` | {'int': 273} |
| `desktopPssKb` | {'int': 273} |
| `hostPssKb` | {'int': 273} |
| `kind` | {'str': 273} |
| `memAvailableKb` | {'int': 273} |
| `memTotalKb` | {'int': 273} |
| `otherPssKb` | {'int': 273} |
| `processes` | {'int': 273} |
| `pssFallbackProcesses` | {'int': 273} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
