# sandbox_telemetry_parse — 2026-11-20 06:50:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1608576 lines=3566
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3555 |
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
| `chromeBrowserPssKb` | {'int': 3555} |
| `chromeGpuPssKb` | {'int': 3555} |
| `chromeOtherPssKb` | {'int': 3555} |
| `chromeProcesses` | {'int': 3555} |
| `chromeProfiles` | {'int': 3555} |
| `chromeRendererMaxPssKb` | {'int': 3555} |
| `chromeRendererPssKb` | {'int': 3555} |
| `chromeRenderers` | {'int': 3555} |
| `chromeTabs` | {'int': 3555} |
| `chromeTabsProbedProfiles` | {'int': 3555} |
| `chromeUtilityPssKb` | {'int': 3555} |
| `desktopPssKb` | {'int': 3555} |
| `hostPssKb` | {'int': 3555} |
| `kind` | {'str': 3555} |
| `memAvailableKb` | {'int': 3555} |
| `memTotalKb` | {'int': 3555} |
| `otherPssKb` | {'int': 3555} |
| `processes` | {'int': 3555} |
| `pssFallbackProcesses` | {'int': 3555} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
