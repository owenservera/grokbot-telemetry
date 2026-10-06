# sandbox_telemetry_parse — 2026-10-06 08:38:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=265130 lines=586
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 581 |
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
| `chromeBrowserPssKb` | {'int': 581} |
| `chromeGpuPssKb` | {'int': 581} |
| `chromeOtherPssKb` | {'int': 581} |
| `chromeProcesses` | {'int': 581} |
| `chromeProfiles` | {'int': 581} |
| `chromeRendererMaxPssKb` | {'int': 581} |
| `chromeRendererPssKb` | {'int': 581} |
| `chromeRenderers` | {'int': 581} |
| `chromeTabs` | {'int': 581} |
| `chromeTabsProbedProfiles` | {'int': 581} |
| `chromeUtilityPssKb` | {'int': 581} |
| `desktopPssKb` | {'int': 581} |
| `hostPssKb` | {'int': 581} |
| `kind` | {'str': 581} |
| `memAvailableKb` | {'int': 581} |
| `memTotalKb` | {'int': 581} |
| `otherPssKb` | {'int': 581} |
| `processes` | {'int': 581} |
| `pssFallbackProcesses` | {'int': 581} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
