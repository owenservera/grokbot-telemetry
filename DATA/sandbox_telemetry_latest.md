# sandbox_telemetry_parse — 2026-11-19 14:28:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1313492 lines=2912
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2903 |
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
| `chromeBrowserPssKb` | {'int': 2903} |
| `chromeGpuPssKb` | {'int': 2903} |
| `chromeOtherPssKb` | {'int': 2903} |
| `chromeProcesses` | {'int': 2903} |
| `chromeProfiles` | {'int': 2903} |
| `chromeRendererMaxPssKb` | {'int': 2903} |
| `chromeRendererPssKb` | {'int': 2903} |
| `chromeRenderers` | {'int': 2903} |
| `chromeTabs` | {'int': 2903} |
| `chromeTabsProbedProfiles` | {'int': 2903} |
| `chromeUtilityPssKb` | {'int': 2903} |
| `desktopPssKb` | {'int': 2903} |
| `hostPssKb` | {'int': 2903} |
| `kind` | {'str': 2903} |
| `memAvailableKb` | {'int': 2903} |
| `memTotalKb` | {'int': 2903} |
| `otherPssKb` | {'int': 2903} |
| `processes` | {'int': 2903} |
| `pssFallbackProcesses` | {'int': 2903} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
