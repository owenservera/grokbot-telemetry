# sandbox_telemetry_parse — 2026-11-26 00:04:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2986256 lines=6615
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6600 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6600} |
| `chromeGpuPssKb` | {'int': 6600} |
| `chromeOtherPssKb` | {'int': 6600} |
| `chromeProcesses` | {'int': 6600} |
| `chromeProfiles` | {'int': 6600} |
| `chromeRendererMaxPssKb` | {'int': 6600} |
| `chromeRendererPssKb` | {'int': 6600} |
| `chromeRenderers` | {'int': 6600} |
| `chromeTabs` | {'int': 6600} |
| `chromeTabsProbedProfiles` | {'int': 6600} |
| `chromeUtilityPssKb` | {'int': 6600} |
| `desktopPssKb` | {'int': 6600} |
| `hostPssKb` | {'int': 6600} |
| `kind` | {'str': 6600} |
| `memAvailableKb` | {'int': 6600} |
| `memTotalKb` | {'int': 6600} |
| `otherPssKb` | {'int': 6600} |
| `processes` | {'int': 6600} |
| `pssFallbackProcesses` | {'int': 6600} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
