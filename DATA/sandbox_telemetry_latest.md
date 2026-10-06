# sandbox_telemetry_parse — 2026-10-06 04:24:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=150218 lines=334
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 329 |
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
| `chromeBrowserPssKb` | {'int': 329} |
| `chromeGpuPssKb` | {'int': 329} |
| `chromeOtherPssKb` | {'int': 329} |
| `chromeProcesses` | {'int': 329} |
| `chromeProfiles` | {'int': 329} |
| `chromeRendererMaxPssKb` | {'int': 329} |
| `chromeRendererPssKb` | {'int': 329} |
| `chromeRenderers` | {'int': 329} |
| `chromeTabs` | {'int': 329} |
| `chromeTabsProbedProfiles` | {'int': 329} |
| `chromeUtilityPssKb` | {'int': 329} |
| `desktopPssKb` | {'int': 329} |
| `hostPssKb` | {'int': 329} |
| `kind` | {'str': 329} |
| `memAvailableKb` | {'int': 329} |
| `memTotalKb` | {'int': 329} |
| `otherPssKb` | {'int': 329} |
| `processes` | {'int': 329} |
| `pssFallbackProcesses` | {'int': 329} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
