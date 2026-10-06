# sandbox_telemetry_parse — 2026-10-06 04:45:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=159338 lines=354
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 349 |
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
| `chromeBrowserPssKb` | {'int': 349} |
| `chromeGpuPssKb` | {'int': 349} |
| `chromeOtherPssKb` | {'int': 349} |
| `chromeProcesses` | {'int': 349} |
| `chromeProfiles` | {'int': 349} |
| `chromeRendererMaxPssKb` | {'int': 349} |
| `chromeRendererPssKb` | {'int': 349} |
| `chromeRenderers` | {'int': 349} |
| `chromeTabs` | {'int': 349} |
| `chromeTabsProbedProfiles` | {'int': 349} |
| `chromeUtilityPssKb` | {'int': 349} |
| `desktopPssKb` | {'int': 349} |
| `hostPssKb` | {'int': 349} |
| `kind` | {'str': 349} |
| `memAvailableKb` | {'int': 349} |
| `memTotalKb` | {'int': 349} |
| `otherPssKb` | {'int': 349} |
| `processes` | {'int': 349} |
| `pssFallbackProcesses` | {'int': 349} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
