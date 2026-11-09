# sandbox_telemetry_parse — 2026-11-09 15:59:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=730365 lines=1622
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1613 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1613} |
| `chromeGpuPssKb` | {'int': 1613} |
| `chromeOtherPssKb` | {'int': 1613} |
| `chromeProcesses` | {'int': 1613} |
| `chromeProfiles` | {'int': 1613} |
| `chromeRendererMaxPssKb` | {'int': 1613} |
| `chromeRendererPssKb` | {'int': 1613} |
| `chromeRenderers` | {'int': 1613} |
| `chromeTabs` | {'int': 1613} |
| `chromeTabsProbedProfiles` | {'int': 1613} |
| `chromeUtilityPssKb` | {'int': 1613} |
| `desktopPssKb` | {'int': 1613} |
| `hostPssKb` | {'int': 1613} |
| `kind` | {'str': 1613} |
| `memAvailableKb` | {'int': 1613} |
| `memTotalKb` | {'int': 1613} |
| `otherPssKb` | {'int': 1613} |
| `processes` | {'int': 1613} |
| `pssFallbackProcesses` | {'int': 1613} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
