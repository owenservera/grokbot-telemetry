# sandbox_telemetry_parse — 2026-10-07 05:53:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=841237 lines=1849
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1844 |
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
| `chromeBrowserPssKb` | {'int': 1844} |
| `chromeGpuPssKb` | {'int': 1844} |
| `chromeOtherPssKb` | {'int': 1844} |
| `chromeProcesses` | {'int': 1844} |
| `chromeProfiles` | {'int': 1844} |
| `chromeRendererMaxPssKb` | {'int': 1844} |
| `chromeRendererPssKb` | {'int': 1844} |
| `chromeRenderers` | {'int': 1844} |
| `chromeTabs` | {'int': 1844} |
| `chromeTabsProbedProfiles` | {'int': 1844} |
| `chromeUtilityPssKb` | {'int': 1844} |
| `desktopPssKb` | {'int': 1844} |
| `hostPssKb` | {'int': 1844} |
| `kind` | {'str': 1844} |
| `memAvailableKb` | {'int': 1844} |
| `memTotalKb` | {'int': 1844} |
| `otherPssKb` | {'int': 1844} |
| `processes` | {'int': 1844} |
| `pssFallbackProcesses` | {'int': 1844} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
