# sandbox_telemetry_parse — 2026-10-06 20:58:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=598922 lines=1318
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1313 |
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
| `chromeBrowserPssKb` | {'int': 1313} |
| `chromeGpuPssKb` | {'int': 1313} |
| `chromeOtherPssKb` | {'int': 1313} |
| `chromeProcesses` | {'int': 1313} |
| `chromeProfiles` | {'int': 1313} |
| `chromeRendererMaxPssKb` | {'int': 1313} |
| `chromeRendererPssKb` | {'int': 1313} |
| `chromeRenderers` | {'int': 1313} |
| `chromeTabs` | {'int': 1313} |
| `chromeTabsProbedProfiles` | {'int': 1313} |
| `chromeUtilityPssKb` | {'int': 1313} |
| `desktopPssKb` | {'int': 1313} |
| `hostPssKb` | {'int': 1313} |
| `kind` | {'str': 1313} |
| `memAvailableKb` | {'int': 1313} |
| `memTotalKb` | {'int': 1313} |
| `otherPssKb` | {'int': 1313} |
| `processes` | {'int': 1313} |
| `pssFallbackProcesses` | {'int': 1313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
