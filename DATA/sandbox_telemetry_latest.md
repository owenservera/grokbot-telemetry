# sandbox_telemetry_parse — 2026-10-07 08:06:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=899605 lines=1977
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1972 |
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
| `chromeBrowserPssKb` | {'int': 1972} |
| `chromeGpuPssKb` | {'int': 1972} |
| `chromeOtherPssKb` | {'int': 1972} |
| `chromeProcesses` | {'int': 1972} |
| `chromeProfiles` | {'int': 1972} |
| `chromeRendererMaxPssKb` | {'int': 1972} |
| `chromeRendererPssKb` | {'int': 1972} |
| `chromeRenderers` | {'int': 1972} |
| `chromeTabs` | {'int': 1972} |
| `chromeTabsProbedProfiles` | {'int': 1972} |
| `chromeUtilityPssKb` | {'int': 1972} |
| `desktopPssKb` | {'int': 1972} |
| `hostPssKb` | {'int': 1972} |
| `kind` | {'str': 1972} |
| `memAvailableKb` | {'int': 1972} |
| `memTotalKb` | {'int': 1972} |
| `otherPssKb` | {'int': 1972} |
| `processes` | {'int': 1972} |
| `pssFallbackProcesses` | {'int': 1972} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
