# sandbox_telemetry_parse — 2026-10-06 14:38:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=427010 lines=941
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 936 |
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
| `chromeBrowserPssKb` | {'int': 936} |
| `chromeGpuPssKb` | {'int': 936} |
| `chromeOtherPssKb` | {'int': 936} |
| `chromeProcesses` | {'int': 936} |
| `chromeProfiles` | {'int': 936} |
| `chromeRendererMaxPssKb` | {'int': 936} |
| `chromeRendererPssKb` | {'int': 936} |
| `chromeRenderers` | {'int': 936} |
| `chromeTabs` | {'int': 936} |
| `chromeTabsProbedProfiles` | {'int': 936} |
| `chromeUtilityPssKb` | {'int': 936} |
| `desktopPssKb` | {'int': 936} |
| `hostPssKb` | {'int': 936} |
| `kind` | {'str': 936} |
| `memAvailableKb` | {'int': 936} |
| `memTotalKb` | {'int': 936} |
| `otherPssKb` | {'int': 936} |
| `processes` | {'int': 936} |
| `pssFallbackProcesses` | {'int': 936} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
