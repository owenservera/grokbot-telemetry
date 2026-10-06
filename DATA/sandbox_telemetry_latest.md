# sandbox_telemetry_parse — 2026-10-06 20:37:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=589346 lines=1297
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1292 |
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
| `chromeBrowserPssKb` | {'int': 1292} |
| `chromeGpuPssKb` | {'int': 1292} |
| `chromeOtherPssKb` | {'int': 1292} |
| `chromeProcesses` | {'int': 1292} |
| `chromeProfiles` | {'int': 1292} |
| `chromeRendererMaxPssKb` | {'int': 1292} |
| `chromeRendererPssKb` | {'int': 1292} |
| `chromeRenderers` | {'int': 1292} |
| `chromeTabs` | {'int': 1292} |
| `chromeTabsProbedProfiles` | {'int': 1292} |
| `chromeUtilityPssKb` | {'int': 1292} |
| `desktopPssKb` | {'int': 1292} |
| `hostPssKb` | {'int': 1292} |
| `kind` | {'str': 1292} |
| `memAvailableKb` | {'int': 1292} |
| `memTotalKb` | {'int': 1292} |
| `otherPssKb` | {'int': 1292} |
| `processes` | {'int': 1292} |
| `pssFallbackProcesses` | {'int': 1292} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
