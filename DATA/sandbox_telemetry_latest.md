# sandbox_telemetry_parse — 2026-11-19 21:41:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1453067 lines=3222
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3211 |
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
| `chromeBrowserPssKb` | {'int': 3211} |
| `chromeGpuPssKb` | {'int': 3211} |
| `chromeOtherPssKb` | {'int': 3211} |
| `chromeProcesses` | {'int': 3211} |
| `chromeProfiles` | {'int': 3211} |
| `chromeRendererMaxPssKb` | {'int': 3211} |
| `chromeRendererPssKb` | {'int': 3211} |
| `chromeRenderers` | {'int': 3211} |
| `chromeTabs` | {'int': 3211} |
| `chromeTabsProbedProfiles` | {'int': 3211} |
| `chromeUtilityPssKb` | {'int': 3211} |
| `desktopPssKb` | {'int': 3211} |
| `hostPssKb` | {'int': 3211} |
| `kind` | {'str': 3211} |
| `memAvailableKb` | {'int': 3211} |
| `memTotalKb` | {'int': 3211} |
| `otherPssKb` | {'int': 3211} |
| `processes` | {'int': 3211} |
| `pssFallbackProcesses` | {'int': 3211} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
