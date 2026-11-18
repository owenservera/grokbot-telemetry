# sandbox_telemetry_parse — 2026-11-18 03:13:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=649409 lines=1442
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1435 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1435} |
| `chromeGpuPssKb` | {'int': 1435} |
| `chromeOtherPssKb` | {'int': 1435} |
| `chromeProcesses` | {'int': 1435} |
| `chromeProfiles` | {'int': 1435} |
| `chromeRendererMaxPssKb` | {'int': 1435} |
| `chromeRendererPssKb` | {'int': 1435} |
| `chromeRenderers` | {'int': 1435} |
| `chromeTabs` | {'int': 1435} |
| `chromeTabsProbedProfiles` | {'int': 1435} |
| `chromeUtilityPssKb` | {'int': 1435} |
| `desktopPssKb` | {'int': 1435} |
| `hostPssKb` | {'int': 1435} |
| `kind` | {'str': 1435} |
| `memAvailableKb` | {'int': 1435} |
| `memTotalKb` | {'int': 1435} |
| `otherPssKb` | {'int': 1435} |
| `processes` | {'int': 1435} |
| `pssFallbackProcesses` | {'int': 1435} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
