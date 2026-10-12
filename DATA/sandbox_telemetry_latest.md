# sandbox_telemetry_parse — 2026-10-12 20:51:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=664376 lines=1474
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1469 |
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
| `chromeBrowserPssKb` | {'int': 1469} |
| `chromeGpuPssKb` | {'int': 1469} |
| `chromeOtherPssKb` | {'int': 1469} |
| `chromeProcesses` | {'int': 1469} |
| `chromeProfiles` | {'int': 1469} |
| `chromeRendererMaxPssKb` | {'int': 1469} |
| `chromeRendererPssKb` | {'int': 1469} |
| `chromeRenderers` | {'int': 1469} |
| `chromeTabs` | {'int': 1469} |
| `chromeTabsProbedProfiles` | {'int': 1469} |
| `chromeUtilityPssKb` | {'int': 1469} |
| `desktopPssKb` | {'int': 1469} |
| `hostPssKb` | {'int': 1469} |
| `kind` | {'str': 1469} |
| `memAvailableKb` | {'int': 1469} |
| `memTotalKb` | {'int': 1469} |
| `otherPssKb` | {'int': 1469} |
| `processes` | {'int': 1469} |
| `pssFallbackProcesses` | {'int': 1469} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
