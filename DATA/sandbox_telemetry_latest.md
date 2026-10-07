# sandbox_telemetry_parse — 2026-10-07 05:58:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=843517 lines=1854
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1849 |
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
| `chromeBrowserPssKb` | {'int': 1849} |
| `chromeGpuPssKb` | {'int': 1849} |
| `chromeOtherPssKb` | {'int': 1849} |
| `chromeProcesses` | {'int': 1849} |
| `chromeProfiles` | {'int': 1849} |
| `chromeRendererMaxPssKb` | {'int': 1849} |
| `chromeRendererPssKb` | {'int': 1849} |
| `chromeRenderers` | {'int': 1849} |
| `chromeTabs` | {'int': 1849} |
| `chromeTabsProbedProfiles` | {'int': 1849} |
| `chromeUtilityPssKb` | {'int': 1849} |
| `desktopPssKb` | {'int': 1849} |
| `hostPssKb` | {'int': 1849} |
| `kind` | {'str': 1849} |
| `memAvailableKb` | {'int': 1849} |
| `memTotalKb` | {'int': 1849} |
| `otherPssKb` | {'int': 1849} |
| `processes` | {'int': 1849} |
| `pssFallbackProcesses` | {'int': 1849} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
