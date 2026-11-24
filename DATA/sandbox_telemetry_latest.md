# sandbox_telemetry_parse — 2026-11-24 03:38:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2112415 lines=4683
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4668 |
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
| `chromeBrowserPssKb` | {'int': 4668} |
| `chromeGpuPssKb` | {'int': 4668} |
| `chromeOtherPssKb` | {'int': 4668} |
| `chromeProcesses` | {'int': 4668} |
| `chromeProfiles` | {'int': 4668} |
| `chromeRendererMaxPssKb` | {'int': 4668} |
| `chromeRendererPssKb` | {'int': 4668} |
| `chromeRenderers` | {'int': 4668} |
| `chromeTabs` | {'int': 4668} |
| `chromeTabsProbedProfiles` | {'int': 4668} |
| `chromeUtilityPssKb` | {'int': 4668} |
| `desktopPssKb` | {'int': 4668} |
| `hostPssKb` | {'int': 4668} |
| `kind` | {'str': 4668} |
| `memAvailableKb` | {'int': 4668} |
| `memTotalKb` | {'int': 4668} |
| `otherPssKb` | {'int': 4668} |
| `processes` | {'int': 4668} |
| `pssFallbackProcesses` | {'int': 4668} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
