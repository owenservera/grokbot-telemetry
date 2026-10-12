# sandbox_telemetry_parse — 2026-10-12 16:23:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=631832 lines=1402
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1397 |
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
| `chromeBrowserPssKb` | {'int': 1397} |
| `chromeGpuPssKb` | {'int': 1397} |
| `chromeOtherPssKb` | {'int': 1397} |
| `chromeProcesses` | {'int': 1397} |
| `chromeProfiles` | {'int': 1397} |
| `chromeRendererMaxPssKb` | {'int': 1397} |
| `chromeRendererPssKb` | {'int': 1397} |
| `chromeRenderers` | {'int': 1397} |
| `chromeTabs` | {'int': 1397} |
| `chromeTabsProbedProfiles` | {'int': 1397} |
| `chromeUtilityPssKb` | {'int': 1397} |
| `desktopPssKb` | {'int': 1397} |
| `hostPssKb` | {'int': 1397} |
| `kind` | {'str': 1397} |
| `memAvailableKb` | {'int': 1397} |
| `memTotalKb` | {'int': 1397} |
| `otherPssKb` | {'int': 1397} |
| `processes` | {'int': 1397} |
| `pssFallbackProcesses` | {'int': 1397} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
