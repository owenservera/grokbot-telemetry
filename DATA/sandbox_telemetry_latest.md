# sandbox_telemetry_parse — 2026-11-28 09:25:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=824928 lines=1830
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1822 |
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
| `chromeBrowserPssKb` | {'int': 1822} |
| `chromeGpuPssKb` | {'int': 1822} |
| `chromeOtherPssKb` | {'int': 1822} |
| `chromeProcesses` | {'int': 1822} |
| `chromeProfiles` | {'int': 1822} |
| `chromeRendererMaxPssKb` | {'int': 1822} |
| `chromeRendererPssKb` | {'int': 1822} |
| `chromeRenderers` | {'int': 1822} |
| `chromeTabs` | {'int': 1822} |
| `chromeTabsProbedProfiles` | {'int': 1822} |
| `chromeUtilityPssKb` | {'int': 1822} |
| `desktopPssKb` | {'int': 1822} |
| `hostPssKb` | {'int': 1822} |
| `kind` | {'str': 1822} |
| `memAvailableKb` | {'int': 1822} |
| `memTotalKb` | {'int': 1822} |
| `otherPssKb` | {'int': 1822} |
| `processes` | {'int': 1822} |
| `pssFallbackProcesses` | {'int': 1822} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
