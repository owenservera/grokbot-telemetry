# sandbox_telemetry_parse — 2026-10-07 03:43:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=782413 lines=1720
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1715 |
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
| `chromeBrowserPssKb` | {'int': 1715} |
| `chromeGpuPssKb` | {'int': 1715} |
| `chromeOtherPssKb` | {'int': 1715} |
| `chromeProcesses` | {'int': 1715} |
| `chromeProfiles` | {'int': 1715} |
| `chromeRendererMaxPssKb` | {'int': 1715} |
| `chromeRendererPssKb` | {'int': 1715} |
| `chromeRenderers` | {'int': 1715} |
| `chromeTabs` | {'int': 1715} |
| `chromeTabsProbedProfiles` | {'int': 1715} |
| `chromeUtilityPssKb` | {'int': 1715} |
| `desktopPssKb` | {'int': 1715} |
| `hostPssKb` | {'int': 1715} |
| `kind` | {'str': 1715} |
| `memAvailableKb` | {'int': 1715} |
| `memTotalKb` | {'int': 1715} |
| `otherPssKb` | {'int': 1715} |
| `processes` | {'int': 1715} |
| `pssFallbackProcesses` | {'int': 1715} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
