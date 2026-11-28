# sandbox_telemetry_parse — 2026-11-28 02:58:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=704172 lines=1563
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1555 |
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
| `chromeBrowserPssKb` | {'int': 1555} |
| `chromeGpuPssKb` | {'int': 1555} |
| `chromeOtherPssKb` | {'int': 1555} |
| `chromeProcesses` | {'int': 1555} |
| `chromeProfiles` | {'int': 1555} |
| `chromeRendererMaxPssKb` | {'int': 1555} |
| `chromeRendererPssKb` | {'int': 1555} |
| `chromeRenderers` | {'int': 1555} |
| `chromeTabs` | {'int': 1555} |
| `chromeTabsProbedProfiles` | {'int': 1555} |
| `chromeUtilityPssKb` | {'int': 1555} |
| `desktopPssKb` | {'int': 1555} |
| `hostPssKb` | {'int': 1555} |
| `kind` | {'str': 1555} |
| `memAvailableKb` | {'int': 1555} |
| `memTotalKb` | {'int': 1555} |
| `otherPssKb` | {'int': 1555} |
| `processes` | {'int': 1555} |
| `pssFallbackProcesses` | {'int': 1555} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
