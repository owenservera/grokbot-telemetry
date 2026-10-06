# sandbox_telemetry_parse — 2026-10-07 01:43:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=728522 lines=1602
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1597 |
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
| `chromeBrowserPssKb` | {'int': 1597} |
| `chromeGpuPssKb` | {'int': 1597} |
| `chromeOtherPssKb` | {'int': 1597} |
| `chromeProcesses` | {'int': 1597} |
| `chromeProfiles` | {'int': 1597} |
| `chromeRendererMaxPssKb` | {'int': 1597} |
| `chromeRendererPssKb` | {'int': 1597} |
| `chromeRenderers` | {'int': 1597} |
| `chromeTabs` | {'int': 1597} |
| `chromeTabsProbedProfiles` | {'int': 1597} |
| `chromeUtilityPssKb` | {'int': 1597} |
| `desktopPssKb` | {'int': 1597} |
| `hostPssKb` | {'int': 1597} |
| `kind` | {'str': 1597} |
| `memAvailableKb` | {'int': 1597} |
| `memTotalKb` | {'int': 1597} |
| `otherPssKb` | {'int': 1597} |
| `processes` | {'int': 1597} |
| `pssFallbackProcesses` | {'int': 1597} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
