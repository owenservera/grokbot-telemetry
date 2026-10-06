# sandbox_telemetry_parse — 2026-10-06 21:34:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=615338 lines=1354
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1349 |
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
| `chromeBrowserPssKb` | {'int': 1349} |
| `chromeGpuPssKb` | {'int': 1349} |
| `chromeOtherPssKb` | {'int': 1349} |
| `chromeProcesses` | {'int': 1349} |
| `chromeProfiles` | {'int': 1349} |
| `chromeRendererMaxPssKb` | {'int': 1349} |
| `chromeRendererPssKb` | {'int': 1349} |
| `chromeRenderers` | {'int': 1349} |
| `chromeTabs` | {'int': 1349} |
| `chromeTabsProbedProfiles` | {'int': 1349} |
| `chromeUtilityPssKb` | {'int': 1349} |
| `desktopPssKb` | {'int': 1349} |
| `hostPssKb` | {'int': 1349} |
| `kind` | {'str': 1349} |
| `memAvailableKb` | {'int': 1349} |
| `memTotalKb` | {'int': 1349} |
| `otherPssKb` | {'int': 1349} |
| `processes` | {'int': 1349} |
| `pssFallbackProcesses` | {'int': 1349} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
