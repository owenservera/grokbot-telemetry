# sandbox_telemetry_parse — 2026-11-19 21:29:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1448545 lines=3212
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3201 |
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
| `chromeBrowserPssKb` | {'int': 3201} |
| `chromeGpuPssKb` | {'int': 3201} |
| `chromeOtherPssKb` | {'int': 3201} |
| `chromeProcesses` | {'int': 3201} |
| `chromeProfiles` | {'int': 3201} |
| `chromeRendererMaxPssKb` | {'int': 3201} |
| `chromeRendererPssKb` | {'int': 3201} |
| `chromeRenderers` | {'int': 3201} |
| `chromeTabs` | {'int': 3201} |
| `chromeTabsProbedProfiles` | {'int': 3201} |
| `chromeUtilityPssKb` | {'int': 3201} |
| `desktopPssKb` | {'int': 3201} |
| `hostPssKb` | {'int': 3201} |
| `kind` | {'str': 3201} |
| `memAvailableKb` | {'int': 3201} |
| `memTotalKb` | {'int': 3201} |
| `otherPssKb` | {'int': 3201} |
| `processes` | {'int': 3201} |
| `pssFallbackProcesses` | {'int': 3201} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
