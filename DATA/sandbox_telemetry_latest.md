# sandbox_telemetry_parse — 2026-10-07 06:49:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=864493 lines=1900
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1895 |
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
| `chromeBrowserPssKb` | {'int': 1895} |
| `chromeGpuPssKb` | {'int': 1895} |
| `chromeOtherPssKb` | {'int': 1895} |
| `chromeProcesses` | {'int': 1895} |
| `chromeProfiles` | {'int': 1895} |
| `chromeRendererMaxPssKb` | {'int': 1895} |
| `chromeRendererPssKb` | {'int': 1895} |
| `chromeRenderers` | {'int': 1895} |
| `chromeTabs` | {'int': 1895} |
| `chromeTabsProbedProfiles` | {'int': 1895} |
| `chromeUtilityPssKb` | {'int': 1895} |
| `desktopPssKb` | {'int': 1895} |
| `hostPssKb` | {'int': 1895} |
| `kind` | {'str': 1895} |
| `memAvailableKb` | {'int': 1895} |
| `memTotalKb` | {'int': 1895} |
| `otherPssKb` | {'int': 1895} |
| `processes` | {'int': 1895} |
| `pssFallbackProcesses` | {'int': 1895} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
