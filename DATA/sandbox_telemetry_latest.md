# sandbox_telemetry_parse — 2026-11-28 00:18:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=651660 lines=1447
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1439 |
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
| `chromeBrowserPssKb` | {'int': 1439} |
| `chromeGpuPssKb` | {'int': 1439} |
| `chromeOtherPssKb` | {'int': 1439} |
| `chromeProcesses` | {'int': 1439} |
| `chromeProfiles` | {'int': 1439} |
| `chromeRendererMaxPssKb` | {'int': 1439} |
| `chromeRendererPssKb` | {'int': 1439} |
| `chromeRenderers` | {'int': 1439} |
| `chromeTabs` | {'int': 1439} |
| `chromeTabsProbedProfiles` | {'int': 1439} |
| `chromeUtilityPssKb` | {'int': 1439} |
| `desktopPssKb` | {'int': 1439} |
| `hostPssKb` | {'int': 1439} |
| `kind` | {'str': 1439} |
| `memAvailableKb` | {'int': 1439} |
| `memTotalKb` | {'int': 1439} |
| `otherPssKb` | {'int': 1439} |
| `processes` | {'int': 1439} |
| `pssFallbackProcesses` | {'int': 1439} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
