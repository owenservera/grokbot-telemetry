# sandbox_telemetry_parse — 2026-10-07 05:47:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=838957 lines=1844
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1839 |
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
| `chromeBrowserPssKb` | {'int': 1839} |
| `chromeGpuPssKb` | {'int': 1839} |
| `chromeOtherPssKb` | {'int': 1839} |
| `chromeProcesses` | {'int': 1839} |
| `chromeProfiles` | {'int': 1839} |
| `chromeRendererMaxPssKb` | {'int': 1839} |
| `chromeRendererPssKb` | {'int': 1839} |
| `chromeRenderers` | {'int': 1839} |
| `chromeTabs` | {'int': 1839} |
| `chromeTabsProbedProfiles` | {'int': 1839} |
| `chromeUtilityPssKb` | {'int': 1839} |
| `desktopPssKb` | {'int': 1839} |
| `hostPssKb` | {'int': 1839} |
| `kind` | {'str': 1839} |
| `memAvailableKb` | {'int': 1839} |
| `memTotalKb` | {'int': 1839} |
| `otherPssKb` | {'int': 1839} |
| `processes` | {'int': 1839} |
| `pssFallbackProcesses` | {'int': 1839} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
