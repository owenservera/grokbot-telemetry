# sandbox_telemetry_parse — 2026-10-27 09:53:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=451153 lines=1001
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 996 |
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
| `chromeBrowserPssKb` | {'int': 996} |
| `chromeGpuPssKb` | {'int': 996} |
| `chromeOtherPssKb` | {'int': 996} |
| `chromeProcesses` | {'int': 996} |
| `chromeProfiles` | {'int': 996} |
| `chromeRendererMaxPssKb` | {'int': 996} |
| `chromeRendererPssKb` | {'int': 996} |
| `chromeRenderers` | {'int': 996} |
| `chromeTabs` | {'int': 996} |
| `chromeTabsProbedProfiles` | {'int': 996} |
| `chromeUtilityPssKb` | {'int': 996} |
| `desktopPssKb` | {'int': 996} |
| `hostPssKb` | {'int': 996} |
| `kind` | {'str': 996} |
| `memAvailableKb` | {'int': 996} |
| `memTotalKb` | {'int': 996} |
| `otherPssKb` | {'int': 996} |
| `processes` | {'int': 996} |
| `pssFallbackProcesses` | {'int': 996} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
