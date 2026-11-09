# sandbox_telemetry_parse — 2026-11-09 13:29:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=676494 lines=1503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1494 |
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
| `chromeBrowserPssKb` | {'int': 1494} |
| `chromeGpuPssKb` | {'int': 1494} |
| `chromeOtherPssKb` | {'int': 1494} |
| `chromeProcesses` | {'int': 1494} |
| `chromeProfiles` | {'int': 1494} |
| `chromeRendererMaxPssKb` | {'int': 1494} |
| `chromeRendererPssKb` | {'int': 1494} |
| `chromeRenderers` | {'int': 1494} |
| `chromeTabs` | {'int': 1494} |
| `chromeTabsProbedProfiles` | {'int': 1494} |
| `chromeUtilityPssKb` | {'int': 1494} |
| `desktopPssKb` | {'int': 1494} |
| `hostPssKb` | {'int': 1494} |
| `kind` | {'str': 1494} |
| `memAvailableKb` | {'int': 1494} |
| `memTotalKb` | {'int': 1494} |
| `otherPssKb` | {'int': 1494} |
| `processes` | {'int': 1494} |
| `pssFallbackProcesses` | {'int': 1494} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
