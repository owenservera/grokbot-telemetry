# sandbox_telemetry_parse — 2026-10-06 04:50:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=162074 lines=360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 355 |
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
| `chromeBrowserPssKb` | {'int': 355} |
| `chromeGpuPssKb` | {'int': 355} |
| `chromeOtherPssKb` | {'int': 355} |
| `chromeProcesses` | {'int': 355} |
| `chromeProfiles` | {'int': 355} |
| `chromeRendererMaxPssKb` | {'int': 355} |
| `chromeRendererPssKb` | {'int': 355} |
| `chromeRenderers` | {'int': 355} |
| `chromeTabs` | {'int': 355} |
| `chromeTabsProbedProfiles` | {'int': 355} |
| `chromeUtilityPssKb` | {'int': 355} |
| `desktopPssKb` | {'int': 355} |
| `hostPssKb` | {'int': 355} |
| `kind` | {'str': 355} |
| `memAvailableKb` | {'int': 355} |
| `memTotalKb` | {'int': 355} |
| `otherPssKb` | {'int': 355} |
| `processes` | {'int': 355} |
| `pssFallbackProcesses` | {'int': 355} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
