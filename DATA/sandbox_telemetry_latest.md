# sandbox_telemetry_parse — 2026-10-12 18:51:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=645844 lines=1433
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1428 |
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
| `chromeBrowserPssKb` | {'int': 1428} |
| `chromeGpuPssKb` | {'int': 1428} |
| `chromeOtherPssKb` | {'int': 1428} |
| `chromeProcesses` | {'int': 1428} |
| `chromeProfiles` | {'int': 1428} |
| `chromeRendererMaxPssKb` | {'int': 1428} |
| `chromeRendererPssKb` | {'int': 1428} |
| `chromeRenderers` | {'int': 1428} |
| `chromeTabs` | {'int': 1428} |
| `chromeTabsProbedProfiles` | {'int': 1428} |
| `chromeUtilityPssKb` | {'int': 1428} |
| `desktopPssKb` | {'int': 1428} |
| `hostPssKb` | {'int': 1428} |
| `kind` | {'str': 1428} |
| `memAvailableKb` | {'int': 1428} |
| `memTotalKb` | {'int': 1428} |
| `otherPssKb` | {'int': 1428} |
| `processes` | {'int': 1428} |
| `pssFallbackProcesses` | {'int': 1428} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
