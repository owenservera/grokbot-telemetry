# sandbox_telemetry_parse — 2026-10-06 06:34:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=209042 lines=463
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 458 |
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
| `chromeBrowserPssKb` | {'int': 458} |
| `chromeGpuPssKb` | {'int': 458} |
| `chromeOtherPssKb` | {'int': 458} |
| `chromeProcesses` | {'int': 458} |
| `chromeProfiles` | {'int': 458} |
| `chromeRendererMaxPssKb` | {'int': 458} |
| `chromeRendererPssKb` | {'int': 458} |
| `chromeRenderers` | {'int': 458} |
| `chromeTabs` | {'int': 458} |
| `chromeTabsProbedProfiles` | {'int': 458} |
| `chromeUtilityPssKb` | {'int': 458} |
| `desktopPssKb` | {'int': 458} |
| `hostPssKb` | {'int': 458} |
| `kind` | {'str': 458} |
| `memAvailableKb` | {'int': 458} |
| `memTotalKb` | {'int': 458} |
| `otherPssKb` | {'int': 458} |
| `processes` | {'int': 458} |
| `pssFallbackProcesses` | {'int': 458} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
