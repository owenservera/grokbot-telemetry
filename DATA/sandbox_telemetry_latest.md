# sandbox_telemetry_parse — 2026-10-07 02:04:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=737662 lines=1622
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1617 |
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
| `chromeBrowserPssKb` | {'int': 1617} |
| `chromeGpuPssKb` | {'int': 1617} |
| `chromeOtherPssKb` | {'int': 1617} |
| `chromeProcesses` | {'int': 1617} |
| `chromeProfiles` | {'int': 1617} |
| `chromeRendererMaxPssKb` | {'int': 1617} |
| `chromeRendererPssKb` | {'int': 1617} |
| `chromeRenderers` | {'int': 1617} |
| `chromeTabs` | {'int': 1617} |
| `chromeTabsProbedProfiles` | {'int': 1617} |
| `chromeUtilityPssKb` | {'int': 1617} |
| `desktopPssKb` | {'int': 1617} |
| `hostPssKb` | {'int': 1617} |
| `kind` | {'str': 1617} |
| `memAvailableKb` | {'int': 1617} |
| `memTotalKb` | {'int': 1617} |
| `otherPssKb` | {'int': 1617} |
| `processes` | {'int': 1617} |
| `pssFallbackProcesses` | {'int': 1617} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
