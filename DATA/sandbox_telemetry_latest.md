# sandbox_telemetry_parse — 2026-11-07 09:35:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=402359 lines=897
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 888 |
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
| `chromeBrowserPssKb` | {'int': 888} |
| `chromeGpuPssKb` | {'int': 888} |
| `chromeOtherPssKb` | {'int': 888} |
| `chromeProcesses` | {'int': 888} |
| `chromeProfiles` | {'int': 888} |
| `chromeRendererMaxPssKb` | {'int': 888} |
| `chromeRendererPssKb` | {'int': 888} |
| `chromeRenderers` | {'int': 888} |
| `chromeTabs` | {'int': 888} |
| `chromeTabsProbedProfiles` | {'int': 888} |
| `chromeUtilityPssKb` | {'int': 888} |
| `desktopPssKb` | {'int': 888} |
| `hostPssKb` | {'int': 888} |
| `kind` | {'str': 888} |
| `memAvailableKb` | {'int': 888} |
| `memTotalKb` | {'int': 888} |
| `otherPssKb` | {'int': 888} |
| `processes` | {'int': 888} |
| `pssFallbackProcesses` | {'int': 888} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
