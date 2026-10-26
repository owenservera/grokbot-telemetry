# sandbox_telemetry_parse — 2026-10-26 17:46:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=52476 lines=120
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 115 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 115} |
| `chromeGpuPssKb` | {'int': 115} |
| `chromeOtherPssKb` | {'int': 115} |
| `chromeProcesses` | {'int': 115} |
| `chromeProfiles` | {'int': 115} |
| `chromeRendererMaxPssKb` | {'int': 115} |
| `chromeRendererPssKb` | {'int': 115} |
| `chromeRenderers` | {'int': 115} |
| `chromeTabs` | {'int': 115} |
| `chromeTabsProbedProfiles` | {'int': 115} |
| `chromeUtilityPssKb` | {'int': 115} |
| `desktopPssKb` | {'int': 115} |
| `hostPssKb` | {'int': 115} |
| `kind` | {'str': 115} |
| `memAvailableKb` | {'int': 115} |
| `memTotalKb` | {'int': 115} |
| `otherPssKb` | {'int': 115} |
| `processes` | {'int': 115} |
| `pssFallbackProcesses` | {'int': 115} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
