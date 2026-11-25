# sandbox_telemetry_parse — 2026-11-25 23:03:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2962725 lines=6563
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6548 |
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
| `chromeBrowserPssKb` | {'int': 6548} |
| `chromeGpuPssKb` | {'int': 6548} |
| `chromeOtherPssKb` | {'int': 6548} |
| `chromeProcesses` | {'int': 6548} |
| `chromeProfiles` | {'int': 6548} |
| `chromeRendererMaxPssKb` | {'int': 6548} |
| `chromeRendererPssKb` | {'int': 6548} |
| `chromeRenderers` | {'int': 6548} |
| `chromeTabs` | {'int': 6548} |
| `chromeTabsProbedProfiles` | {'int': 6548} |
| `chromeUtilityPssKb` | {'int': 6548} |
| `desktopPssKb` | {'int': 6548} |
| `hostPssKb` | {'int': 6548} |
| `kind` | {'str': 6548} |
| `memAvailableKb` | {'int': 6548} |
| `memTotalKb` | {'int': 6548} |
| `otherPssKb` | {'int': 6548} |
| `processes` | {'int': 6548} |
| `pssFallbackProcesses` | {'int': 6548} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
