# sandbox_telemetry_parse — 2026-11-11 15:27:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1693734 lines=3751
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3742 |
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
| `chromeBrowserPssKb` | {'int': 3742} |
| `chromeGpuPssKb` | {'int': 3742} |
| `chromeOtherPssKb` | {'int': 3742} |
| `chromeProcesses` | {'int': 3742} |
| `chromeProfiles` | {'int': 3742} |
| `chromeRendererMaxPssKb` | {'int': 3742} |
| `chromeRendererPssKb` | {'int': 3742} |
| `chromeRenderers` | {'int': 3742} |
| `chromeTabs` | {'int': 3742} |
| `chromeTabsProbedProfiles` | {'int': 3742} |
| `chromeUtilityPssKb` | {'int': 3742} |
| `desktopPssKb` | {'int': 3742} |
| `hostPssKb` | {'int': 3742} |
| `kind` | {'str': 3742} |
| `memAvailableKb` | {'int': 3742} |
| `memTotalKb` | {'int': 3742} |
| `otherPssKb` | {'int': 3742} |
| `processes` | {'int': 3742} |
| `pssFallbackProcesses` | {'int': 3742} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
