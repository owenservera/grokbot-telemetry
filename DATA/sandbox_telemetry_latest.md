# sandbox_telemetry_parse — 2026-10-07 07:30:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=883189 lines=1941
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1936 |
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
| `chromeBrowserPssKb` | {'int': 1936} |
| `chromeGpuPssKb` | {'int': 1936} |
| `chromeOtherPssKb` | {'int': 1936} |
| `chromeProcesses` | {'int': 1936} |
| `chromeProfiles` | {'int': 1936} |
| `chromeRendererMaxPssKb` | {'int': 1936} |
| `chromeRendererPssKb` | {'int': 1936} |
| `chromeRenderers` | {'int': 1936} |
| `chromeTabs` | {'int': 1936} |
| `chromeTabsProbedProfiles` | {'int': 1936} |
| `chromeUtilityPssKb` | {'int': 1936} |
| `desktopPssKb` | {'int': 1936} |
| `hostPssKb` | {'int': 1936} |
| `kind` | {'str': 1936} |
| `memAvailableKb` | {'int': 1936} |
| `memTotalKb` | {'int': 1936} |
| `otherPssKb` | {'int': 1936} |
| `processes` | {'int': 1936} |
| `pssFallbackProcesses` | {'int': 1936} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
