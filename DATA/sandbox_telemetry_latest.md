# sandbox_telemetry_parse — 2026-11-20 01:34:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1524954 lines=3381
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3370 |
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
| `chromeBrowserPssKb` | {'int': 3370} |
| `chromeGpuPssKb` | {'int': 3370} |
| `chromeOtherPssKb` | {'int': 3370} |
| `chromeProcesses` | {'int': 3370} |
| `chromeProfiles` | {'int': 3370} |
| `chromeRendererMaxPssKb` | {'int': 3370} |
| `chromeRendererPssKb` | {'int': 3370} |
| `chromeRenderers` | {'int': 3370} |
| `chromeTabs` | {'int': 3370} |
| `chromeTabsProbedProfiles` | {'int': 3370} |
| `chromeUtilityPssKb` | {'int': 3370} |
| `desktopPssKb` | {'int': 3370} |
| `hostPssKb` | {'int': 3370} |
| `kind` | {'str': 3370} |
| `memAvailableKb` | {'int': 3370} |
| `memTotalKb` | {'int': 3370} |
| `otherPssKb` | {'int': 3370} |
| `processes` | {'int': 3370} |
| `pssFallbackProcesses` | {'int': 3370} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
