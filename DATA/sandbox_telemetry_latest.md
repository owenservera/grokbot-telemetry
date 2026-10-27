# sandbox_telemetry_parse — 2026-10-27 04:01:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=308768 lines=686
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 681 |
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
| `chromeBrowserPssKb` | {'int': 681} |
| `chromeGpuPssKb` | {'int': 681} |
| `chromeOtherPssKb` | {'int': 681} |
| `chromeProcesses` | {'int': 681} |
| `chromeProfiles` | {'int': 681} |
| `chromeRendererMaxPssKb` | {'int': 681} |
| `chromeRendererPssKb` | {'int': 681} |
| `chromeRenderers` | {'int': 681} |
| `chromeTabs` | {'int': 681} |
| `chromeTabsProbedProfiles` | {'int': 681} |
| `chromeUtilityPssKb` | {'int': 681} |
| `desktopPssKb` | {'int': 681} |
| `hostPssKb` | {'int': 681} |
| `kind` | {'str': 681} |
| `memAvailableKb` | {'int': 681} |
| `memTotalKb` | {'int': 681} |
| `otherPssKb` | {'int': 681} |
| `processes` | {'int': 681} |
| `pssFallbackProcesses` | {'int': 681} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
