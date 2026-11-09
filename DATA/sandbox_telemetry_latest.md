# sandbox_telemetry_parse — 2026-11-09 20:28:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=827268 lines=1836
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1827 |
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
| `chromeBrowserPssKb` | {'int': 1827} |
| `chromeGpuPssKb` | {'int': 1827} |
| `chromeOtherPssKb` | {'int': 1827} |
| `chromeProcesses` | {'int': 1827} |
| `chromeProfiles` | {'int': 1827} |
| `chromeRendererMaxPssKb` | {'int': 1827} |
| `chromeRendererPssKb` | {'int': 1827} |
| `chromeRenderers` | {'int': 1827} |
| `chromeTabs` | {'int': 1827} |
| `chromeTabsProbedProfiles` | {'int': 1827} |
| `chromeUtilityPssKb` | {'int': 1827} |
| `desktopPssKb` | {'int': 1827} |
| `hostPssKb` | {'int': 1827} |
| `kind` | {'str': 1827} |
| `memAvailableKb` | {'int': 1827} |
| `memTotalKb` | {'int': 1827} |
| `otherPssKb` | {'int': 1827} |
| `processes` | {'int': 1827} |
| `pssFallbackProcesses` | {'int': 1827} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
