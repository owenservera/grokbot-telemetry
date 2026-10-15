# sandbox_telemetry_parse — 2026-10-15 04:32:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=667070 lines=1480
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1475 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1475} |
| `chromeGpuPssKb` | {'int': 1475} |
| `chromeOtherPssKb` | {'int': 1475} |
| `chromeProcesses` | {'int': 1475} |
| `chromeProfiles` | {'int': 1475} |
| `chromeRendererMaxPssKb` | {'int': 1475} |
| `chromeRendererPssKb` | {'int': 1475} |
| `chromeRenderers` | {'int': 1475} |
| `chromeTabs` | {'int': 1475} |
| `chromeTabsProbedProfiles` | {'int': 1475} |
| `chromeUtilityPssKb` | {'int': 1475} |
| `desktopPssKb` | {'int': 1475} |
| `hostPssKb` | {'int': 1475} |
| `kind` | {'str': 1475} |
| `memAvailableKb` | {'int': 1475} |
| `memTotalKb` | {'int': 1475} |
| `otherPssKb` | {'int': 1475} |
| `processes` | {'int': 1475} |
| `pssFallbackProcesses` | {'int': 1475} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
