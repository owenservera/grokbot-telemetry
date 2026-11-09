# sandbox_telemetry_parse — 2026-11-09 16:32:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=742143 lines=1648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1639 |
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
| `chromeBrowserPssKb` | {'int': 1639} |
| `chromeGpuPssKb` | {'int': 1639} |
| `chromeOtherPssKb` | {'int': 1639} |
| `chromeProcesses` | {'int': 1639} |
| `chromeProfiles` | {'int': 1639} |
| `chromeRendererMaxPssKb` | {'int': 1639} |
| `chromeRendererPssKb` | {'int': 1639} |
| `chromeRenderers` | {'int': 1639} |
| `chromeTabs` | {'int': 1639} |
| `chromeTabsProbedProfiles` | {'int': 1639} |
| `chromeUtilityPssKb` | {'int': 1639} |
| `desktopPssKb` | {'int': 1639} |
| `hostPssKb` | {'int': 1639} |
| `kind` | {'str': 1639} |
| `memAvailableKb` | {'int': 1639} |
| `memTotalKb` | {'int': 1639} |
| `otherPssKb` | {'int': 1639} |
| `processes` | {'int': 1639} |
| `pssFallbackProcesses` | {'int': 1639} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
