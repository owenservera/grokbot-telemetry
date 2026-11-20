# sandbox_telemetry_parse — 2026-11-20 15:20:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1773648 lines=3931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3920 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3920} |
| `chromeGpuPssKb` | {'int': 3920} |
| `chromeOtherPssKb` | {'int': 3920} |
| `chromeProcesses` | {'int': 3920} |
| `chromeProfiles` | {'int': 3920} |
| `chromeRendererMaxPssKb` | {'int': 3920} |
| `chromeRendererPssKb` | {'int': 3920} |
| `chromeRenderers` | {'int': 3920} |
| `chromeTabs` | {'int': 3920} |
| `chromeTabsProbedProfiles` | {'int': 3920} |
| `chromeUtilityPssKb` | {'int': 3920} |
| `desktopPssKb` | {'int': 3920} |
| `hostPssKb` | {'int': 3920} |
| `kind` | {'str': 3920} |
| `memAvailableKb` | {'int': 3920} |
| `memTotalKb` | {'int': 3920} |
| `otherPssKb` | {'int': 3920} |
| `processes` | {'int': 3920} |
| `pssFallbackProcesses` | {'int': 3920} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
