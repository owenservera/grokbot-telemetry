# sandbox_telemetry_parse — 2026-11-12 21:18:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2334713 lines=5167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5158 |
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
| `chromeBrowserPssKb` | {'int': 5158} |
| `chromeGpuPssKb` | {'int': 5158} |
| `chromeOtherPssKb` | {'int': 5158} |
| `chromeProcesses` | {'int': 5158} |
| `chromeProfiles` | {'int': 5158} |
| `chromeRendererMaxPssKb` | {'int': 5158} |
| `chromeRendererPssKb` | {'int': 5158} |
| `chromeRenderers` | {'int': 5158} |
| `chromeTabs` | {'int': 5158} |
| `chromeTabsProbedProfiles` | {'int': 5158} |
| `chromeUtilityPssKb` | {'int': 5158} |
| `desktopPssKb` | {'int': 5158} |
| `hostPssKb` | {'int': 5158} |
| `kind` | {'str': 5158} |
| `memAvailableKb` | {'int': 5158} |
| `memTotalKb` | {'int': 5158} |
| `otherPssKb` | {'int': 5158} |
| `processes` | {'int': 5158} |
| `pssFallbackProcesses` | {'int': 5158} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
