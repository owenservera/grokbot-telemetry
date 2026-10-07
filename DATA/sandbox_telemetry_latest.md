# sandbox_telemetry_parse — 2026-10-07 04:19:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=798829 lines=1756
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1751 |
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
| `chromeBrowserPssKb` | {'int': 1751} |
| `chromeGpuPssKb` | {'int': 1751} |
| `chromeOtherPssKb` | {'int': 1751} |
| `chromeProcesses` | {'int': 1751} |
| `chromeProfiles` | {'int': 1751} |
| `chromeRendererMaxPssKb` | {'int': 1751} |
| `chromeRendererPssKb` | {'int': 1751} |
| `chromeRenderers` | {'int': 1751} |
| `chromeTabs` | {'int': 1751} |
| `chromeTabsProbedProfiles` | {'int': 1751} |
| `chromeUtilityPssKb` | {'int': 1751} |
| `desktopPssKb` | {'int': 1751} |
| `hostPssKb` | {'int': 1751} |
| `kind` | {'str': 1751} |
| `memAvailableKb` | {'int': 1751} |
| `memTotalKb` | {'int': 1751} |
| `otherPssKb` | {'int': 1751} |
| `processes` | {'int': 1751} |
| `pssFallbackProcesses` | {'int': 1751} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
