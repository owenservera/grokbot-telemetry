# sandbox_telemetry_parse — 2026-11-25 01:22:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2534038 lines=5615
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5600 |
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
| `chromeBrowserPssKb` | {'int': 5600} |
| `chromeGpuPssKb` | {'int': 5600} |
| `chromeOtherPssKb` | {'int': 5600} |
| `chromeProcesses` | {'int': 5600} |
| `chromeProfiles` | {'int': 5600} |
| `chromeRendererMaxPssKb` | {'int': 5600} |
| `chromeRendererPssKb` | {'int': 5600} |
| `chromeRenderers` | {'int': 5600} |
| `chromeTabs` | {'int': 5600} |
| `chromeTabsProbedProfiles` | {'int': 5600} |
| `chromeUtilityPssKb` | {'int': 5600} |
| `desktopPssKb` | {'int': 5600} |
| `hostPssKb` | {'int': 5600} |
| `kind` | {'str': 5600} |
| `memAvailableKb` | {'int': 5600} |
| `memTotalKb` | {'int': 5600} |
| `otherPssKb` | {'int': 5600} |
| `processes` | {'int': 5600} |
| `pssFallbackProcesses` | {'int': 5600} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
