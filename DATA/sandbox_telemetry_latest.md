# sandbox_telemetry_parse — 2026-10-06 23:07:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=657746 lines=1447
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1442 |
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
| `chromeBrowserPssKb` | {'int': 1442} |
| `chromeGpuPssKb` | {'int': 1442} |
| `chromeOtherPssKb` | {'int': 1442} |
| `chromeProcesses` | {'int': 1442} |
| `chromeProfiles` | {'int': 1442} |
| `chromeRendererMaxPssKb` | {'int': 1442} |
| `chromeRendererPssKb` | {'int': 1442} |
| `chromeRenderers` | {'int': 1442} |
| `chromeTabs` | {'int': 1442} |
| `chromeTabsProbedProfiles` | {'int': 1442} |
| `chromeUtilityPssKb` | {'int': 1442} |
| `desktopPssKb` | {'int': 1442} |
| `hostPssKb` | {'int': 1442} |
| `kind` | {'str': 1442} |
| `memAvailableKb` | {'int': 1442} |
| `memTotalKb` | {'int': 1442} |
| `otherPssKb` | {'int': 1442} |
| `processes` | {'int': 1442} |
| `pssFallbackProcesses` | {'int': 1442} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
