# sandbox_telemetry_parse — 2026-10-15 05:31:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=688766 lines=1528
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1523 |
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
| `chromeBrowserPssKb` | {'int': 1523} |
| `chromeGpuPssKb` | {'int': 1523} |
| `chromeOtherPssKb` | {'int': 1523} |
| `chromeProcesses` | {'int': 1523} |
| `chromeProfiles` | {'int': 1523} |
| `chromeRendererMaxPssKb` | {'int': 1523} |
| `chromeRendererPssKb` | {'int': 1523} |
| `chromeRenderers` | {'int': 1523} |
| `chromeTabs` | {'int': 1523} |
| `chromeTabsProbedProfiles` | {'int': 1523} |
| `chromeUtilityPssKb` | {'int': 1523} |
| `desktopPssKb` | {'int': 1523} |
| `hostPssKb` | {'int': 1523} |
| `kind` | {'str': 1523} |
| `memAvailableKb` | {'int': 1523} |
| `memTotalKb` | {'int': 1523} |
| `otherPssKb` | {'int': 1523} |
| `processes` | {'int': 1523} |
| `pssFallbackProcesses` | {'int': 1523} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
