# sandbox_telemetry_parse — 2026-10-12 19:47:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=653980 lines=1451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1446 |
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
| `chromeBrowserPssKb` | {'int': 1446} |
| `chromeGpuPssKb` | {'int': 1446} |
| `chromeOtherPssKb` | {'int': 1446} |
| `chromeProcesses` | {'int': 1446} |
| `chromeProfiles` | {'int': 1446} |
| `chromeRendererMaxPssKb` | {'int': 1446} |
| `chromeRendererPssKb` | {'int': 1446} |
| `chromeRenderers` | {'int': 1446} |
| `chromeTabs` | {'int': 1446} |
| `chromeTabsProbedProfiles` | {'int': 1446} |
| `chromeUtilityPssKb` | {'int': 1446} |
| `desktopPssKb` | {'int': 1446} |
| `hostPssKb` | {'int': 1446} |
| `kind` | {'str': 1446} |
| `memAvailableKb` | {'int': 1446} |
| `memTotalKb` | {'int': 1446} |
| `otherPssKb` | {'int': 1446} |
| `processes` | {'int': 1446} |
| `pssFallbackProcesses` | {'int': 1446} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
