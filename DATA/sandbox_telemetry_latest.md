# sandbox_telemetry_parse — 2026-10-12 21:08:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=667540 lines=1481
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1476 |
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
| `chromeBrowserPssKb` | {'int': 1476} |
| `chromeGpuPssKb` | {'int': 1476} |
| `chromeOtherPssKb` | {'int': 1476} |
| `chromeProcesses` | {'int': 1476} |
| `chromeProfiles` | {'int': 1476} |
| `chromeRendererMaxPssKb` | {'int': 1476} |
| `chromeRendererPssKb` | {'int': 1476} |
| `chromeRenderers` | {'int': 1476} |
| `chromeTabs` | {'int': 1476} |
| `chromeTabsProbedProfiles` | {'int': 1476} |
| `chromeUtilityPssKb` | {'int': 1476} |
| `desktopPssKb` | {'int': 1476} |
| `hostPssKb` | {'int': 1476} |
| `kind` | {'str': 1476} |
| `memAvailableKb` | {'int': 1476} |
| `memTotalKb` | {'int': 1476} |
| `otherPssKb` | {'int': 1476} |
| `processes` | {'int': 1476} |
| `pssFallbackProcesses` | {'int': 1476} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
