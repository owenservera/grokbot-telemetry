# sandbox_telemetry_parse — 2026-10-07 06:34:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=857653 lines=1885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1880 |
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
| `chromeBrowserPssKb` | {'int': 1880} |
| `chromeGpuPssKb` | {'int': 1880} |
| `chromeOtherPssKb` | {'int': 1880} |
| `chromeProcesses` | {'int': 1880} |
| `chromeProfiles` | {'int': 1880} |
| `chromeRendererMaxPssKb` | {'int': 1880} |
| `chromeRendererPssKb` | {'int': 1880} |
| `chromeRenderers` | {'int': 1880} |
| `chromeTabs` | {'int': 1880} |
| `chromeTabsProbedProfiles` | {'int': 1880} |
| `chromeUtilityPssKb` | {'int': 1880} |
| `desktopPssKb` | {'int': 1880} |
| `hostPssKb` | {'int': 1880} |
| `kind` | {'str': 1880} |
| `memAvailableKb` | {'int': 1880} |
| `memTotalKb` | {'int': 1880} |
| `otherPssKb` | {'int': 1880} |
| `processes` | {'int': 1880} |
| `pssFallbackProcesses` | {'int': 1880} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
