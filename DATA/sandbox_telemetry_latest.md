# sandbox_telemetry_parse — 2026-10-07 02:50:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=758684 lines=1668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1663 |
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
| `chromeBrowserPssKb` | {'int': 1663} |
| `chromeGpuPssKb` | {'int': 1663} |
| `chromeOtherPssKb` | {'int': 1663} |
| `chromeProcesses` | {'int': 1663} |
| `chromeProfiles` | {'int': 1663} |
| `chromeRendererMaxPssKb` | {'int': 1663} |
| `chromeRendererPssKb` | {'int': 1663} |
| `chromeRenderers` | {'int': 1663} |
| `chromeTabs` | {'int': 1663} |
| `chromeTabsProbedProfiles` | {'int': 1663} |
| `chromeUtilityPssKb` | {'int': 1663} |
| `desktopPssKb` | {'int': 1663} |
| `hostPssKb` | {'int': 1663} |
| `kind` | {'str': 1663} |
| `memAvailableKb` | {'int': 1663} |
| `memTotalKb` | {'int': 1663} |
| `otherPssKb` | {'int': 1663} |
| `processes` | {'int': 1663} |
| `pssFallbackProcesses` | {'int': 1663} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
