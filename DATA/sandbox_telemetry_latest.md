# sandbox_telemetry_parse — 2026-10-06 16:17:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=471698 lines=1039
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1034 |
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
| `chromeBrowserPssKb` | {'int': 1034} |
| `chromeGpuPssKb` | {'int': 1034} |
| `chromeOtherPssKb` | {'int': 1034} |
| `chromeProcesses` | {'int': 1034} |
| `chromeProfiles` | {'int': 1034} |
| `chromeRendererMaxPssKb` | {'int': 1034} |
| `chromeRendererPssKb` | {'int': 1034} |
| `chromeRenderers` | {'int': 1034} |
| `chromeTabs` | {'int': 1034} |
| `chromeTabsProbedProfiles` | {'int': 1034} |
| `chromeUtilityPssKb` | {'int': 1034} |
| `desktopPssKb` | {'int': 1034} |
| `hostPssKb` | {'int': 1034} |
| `kind` | {'str': 1034} |
| `memAvailableKb` | {'int': 1034} |
| `memTotalKb` | {'int': 1034} |
| `otherPssKb` | {'int': 1034} |
| `processes` | {'int': 1034} |
| `pssFallbackProcesses` | {'int': 1034} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
