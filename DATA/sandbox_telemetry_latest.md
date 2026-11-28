# sandbox_telemetry_parse — 2026-11-28 19:21:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1021836 lines=2265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2257 |
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
| `chromeBrowserPssKb` | {'int': 2257} |
| `chromeGpuPssKb` | {'int': 2257} |
| `chromeOtherPssKb` | {'int': 2257} |
| `chromeProcesses` | {'int': 2257} |
| `chromeProfiles` | {'int': 2257} |
| `chromeRendererMaxPssKb` | {'int': 2257} |
| `chromeRendererPssKb` | {'int': 2257} |
| `chromeRenderers` | {'int': 2257} |
| `chromeTabs` | {'int': 2257} |
| `chromeTabsProbedProfiles` | {'int': 2257} |
| `chromeUtilityPssKb` | {'int': 2257} |
| `desktopPssKb` | {'int': 2257} |
| `hostPssKb` | {'int': 2257} |
| `kind` | {'str': 2257} |
| `memAvailableKb` | {'int': 2257} |
| `memTotalKb` | {'int': 2257} |
| `otherPssKb` | {'int': 2257} |
| `processes` | {'int': 2257} |
| `pssFallbackProcesses` | {'int': 2257} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
