# sandbox_telemetry_parse — 2026-10-27 07:43:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=400072 lines=888
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 883 |
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
| `chromeBrowserPssKb` | {'int': 883} |
| `chromeGpuPssKb` | {'int': 883} |
| `chromeOtherPssKb` | {'int': 883} |
| `chromeProcesses` | {'int': 883} |
| `chromeProfiles` | {'int': 883} |
| `chromeRendererMaxPssKb` | {'int': 883} |
| `chromeRendererPssKb` | {'int': 883} |
| `chromeRenderers` | {'int': 883} |
| `chromeTabs` | {'int': 883} |
| `chromeTabsProbedProfiles` | {'int': 883} |
| `chromeUtilityPssKb` | {'int': 883} |
| `desktopPssKb` | {'int': 883} |
| `hostPssKb` | {'int': 883} |
| `kind` | {'str': 883} |
| `memAvailableKb` | {'int': 883} |
| `memTotalKb` | {'int': 883} |
| `otherPssKb` | {'int': 883} |
| `processes` | {'int': 883} |
| `pssFallbackProcesses` | {'int': 883} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
