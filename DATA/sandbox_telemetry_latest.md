# sandbox_telemetry_parse — 2026-11-26 10:12:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3204770 lines=7098
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7083 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7083} |
| `chromeGpuPssKb` | {'int': 7083} |
| `chromeOtherPssKb` | {'int': 7083} |
| `chromeProcesses` | {'int': 7083} |
| `chromeProfiles` | {'int': 7083} |
| `chromeRendererMaxPssKb` | {'int': 7083} |
| `chromeRendererPssKb` | {'int': 7083} |
| `chromeRenderers` | {'int': 7083} |
| `chromeTabs` | {'int': 7083} |
| `chromeTabsProbedProfiles` | {'int': 7083} |
| `chromeUtilityPssKb` | {'int': 7083} |
| `desktopPssKb` | {'int': 7083} |
| `hostPssKb` | {'int': 7083} |
| `kind` | {'str': 7083} |
| `memAvailableKb` | {'int': 7083} |
| `memTotalKb` | {'int': 7083} |
| `otherPssKb` | {'int': 7083} |
| `processes` | {'int': 7083} |
| `pssFallbackProcesses` | {'int': 7083} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
