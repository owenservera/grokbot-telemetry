# sandbox_telemetry_parse — 2026-10-07 01:27:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=721210 lines=1586
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1581 |
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
| `chromeBrowserPssKb` | {'int': 1581} |
| `chromeGpuPssKb` | {'int': 1581} |
| `chromeOtherPssKb` | {'int': 1581} |
| `chromeProcesses` | {'int': 1581} |
| `chromeProfiles` | {'int': 1581} |
| `chromeRendererMaxPssKb` | {'int': 1581} |
| `chromeRendererPssKb` | {'int': 1581} |
| `chromeRenderers` | {'int': 1581} |
| `chromeTabs` | {'int': 1581} |
| `chromeTabsProbedProfiles` | {'int': 1581} |
| `chromeUtilityPssKb` | {'int': 1581} |
| `desktopPssKb` | {'int': 1581} |
| `hostPssKb` | {'int': 1581} |
| `kind` | {'str': 1581} |
| `memAvailableKb` | {'int': 1581} |
| `memTotalKb` | {'int': 1581} |
| `otherPssKb` | {'int': 1581} |
| `processes` | {'int': 1581} |
| `pssFallbackProcesses` | {'int': 1581} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
