# sandbox_telemetry_parse — 2026-10-06 20:31:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=587066 lines=1292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1287 |
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
| `chromeBrowserPssKb` | {'int': 1287} |
| `chromeGpuPssKb` | {'int': 1287} |
| `chromeOtherPssKb` | {'int': 1287} |
| `chromeProcesses` | {'int': 1287} |
| `chromeProfiles` | {'int': 1287} |
| `chromeRendererMaxPssKb` | {'int': 1287} |
| `chromeRendererPssKb` | {'int': 1287} |
| `chromeRenderers` | {'int': 1287} |
| `chromeTabs` | {'int': 1287} |
| `chromeTabsProbedProfiles` | {'int': 1287} |
| `chromeUtilityPssKb` | {'int': 1287} |
| `desktopPssKb` | {'int': 1287} |
| `hostPssKb` | {'int': 1287} |
| `kind` | {'str': 1287} |
| `memAvailableKb` | {'int': 1287} |
| `memTotalKb` | {'int': 1287} |
| `otherPssKb` | {'int': 1287} |
| `processes` | {'int': 1287} |
| `pssFallbackProcesses` | {'int': 1287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
