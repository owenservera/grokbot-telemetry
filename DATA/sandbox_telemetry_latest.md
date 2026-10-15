# sandbox_telemetry_parse — 2026-10-15 03:29:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=641758 lines=1424
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1419 |
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
| `chromeBrowserPssKb` | {'int': 1419} |
| `chromeGpuPssKb` | {'int': 1419} |
| `chromeOtherPssKb` | {'int': 1419} |
| `chromeProcesses` | {'int': 1419} |
| `chromeProfiles` | {'int': 1419} |
| `chromeRendererMaxPssKb` | {'int': 1419} |
| `chromeRendererPssKb` | {'int': 1419} |
| `chromeRenderers` | {'int': 1419} |
| `chromeTabs` | {'int': 1419} |
| `chromeTabsProbedProfiles` | {'int': 1419} |
| `chromeUtilityPssKb` | {'int': 1419} |
| `desktopPssKb` | {'int': 1419} |
| `hostPssKb` | {'int': 1419} |
| `kind` | {'str': 1419} |
| `memAvailableKb` | {'int': 1419} |
| `memTotalKb` | {'int': 1419} |
| `otherPssKb` | {'int': 1419} |
| `processes` | {'int': 1419} |
| `pssFallbackProcesses` | {'int': 1419} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
