# sandbox_telemetry_parse — 2026-11-28 06:17:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=763880 lines=1695
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1687 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1687} |
| `chromeGpuPssKb` | {'int': 1687} |
| `chromeOtherPssKb` | {'int': 1687} |
| `chromeProcesses` | {'int': 1687} |
| `chromeProfiles` | {'int': 1687} |
| `chromeRendererMaxPssKb` | {'int': 1687} |
| `chromeRendererPssKb` | {'int': 1687} |
| `chromeRenderers` | {'int': 1687} |
| `chromeTabs` | {'int': 1687} |
| `chromeTabsProbedProfiles` | {'int': 1687} |
| `chromeUtilityPssKb` | {'int': 1687} |
| `desktopPssKb` | {'int': 1687} |
| `hostPssKb` | {'int': 1687} |
| `kind` | {'str': 1687} |
| `memAvailableKb` | {'int': 1687} |
| `memTotalKb` | {'int': 1687} |
| `otherPssKb` | {'int': 1687} |
| `processes` | {'int': 1687} |
| `pssFallbackProcesses` | {'int': 1687} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
