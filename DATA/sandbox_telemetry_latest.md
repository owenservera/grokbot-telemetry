# sandbox_telemetry_parse — 2026-11-20 09:24:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1657405 lines=3674
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3663 |
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
| `chromeBrowserPssKb` | {'int': 3663} |
| `chromeGpuPssKb` | {'int': 3663} |
| `chromeOtherPssKb` | {'int': 3663} |
| `chromeProcesses` | {'int': 3663} |
| `chromeProfiles` | {'int': 3663} |
| `chromeRendererMaxPssKb` | {'int': 3663} |
| `chromeRendererPssKb` | {'int': 3663} |
| `chromeRenderers` | {'int': 3663} |
| `chromeTabs` | {'int': 3663} |
| `chromeTabsProbedProfiles` | {'int': 3663} |
| `chromeUtilityPssKb` | {'int': 3663} |
| `desktopPssKb` | {'int': 3663} |
| `hostPssKb` | {'int': 3663} |
| `kind` | {'str': 3663} |
| `memAvailableKb` | {'int': 3663} |
| `memTotalKb` | {'int': 3663} |
| `otherPssKb` | {'int': 3663} |
| `processes` | {'int': 3663} |
| `pssFallbackProcesses` | {'int': 3663} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
