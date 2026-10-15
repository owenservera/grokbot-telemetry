# sandbox_telemetry_parse — 2026-10-15 04:52:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=674302 lines=1496
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1491 |
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
| `chromeBrowserPssKb` | {'int': 1491} |
| `chromeGpuPssKb` | {'int': 1491} |
| `chromeOtherPssKb` | {'int': 1491} |
| `chromeProcesses` | {'int': 1491} |
| `chromeProfiles` | {'int': 1491} |
| `chromeRendererMaxPssKb` | {'int': 1491} |
| `chromeRendererPssKb` | {'int': 1491} |
| `chromeRenderers` | {'int': 1491} |
| `chromeTabs` | {'int': 1491} |
| `chromeTabsProbedProfiles` | {'int': 1491} |
| `chromeUtilityPssKb` | {'int': 1491} |
| `desktopPssKb` | {'int': 1491} |
| `hostPssKb` | {'int': 1491} |
| `kind` | {'str': 1491} |
| `memAvailableKb` | {'int': 1491} |
| `memTotalKb` | {'int': 1491} |
| `otherPssKb` | {'int': 1491} |
| `processes` | {'int': 1491} |
| `pssFallbackProcesses` | {'int': 1491} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
