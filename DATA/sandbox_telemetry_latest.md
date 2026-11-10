# sandbox_telemetry_parse — 2026-11-10 01:21:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=922232 lines=2046
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2037 |
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
| `chromeBrowserPssKb` | {'int': 2037} |
| `chromeGpuPssKb` | {'int': 2037} |
| `chromeOtherPssKb` | {'int': 2037} |
| `chromeProcesses` | {'int': 2037} |
| `chromeProfiles` | {'int': 2037} |
| `chromeRendererMaxPssKb` | {'int': 2037} |
| `chromeRendererPssKb` | {'int': 2037} |
| `chromeRenderers` | {'int': 2037} |
| `chromeTabs` | {'int': 2037} |
| `chromeTabsProbedProfiles` | {'int': 2037} |
| `chromeUtilityPssKb` | {'int': 2037} |
| `desktopPssKb` | {'int': 2037} |
| `hostPssKb` | {'int': 2037} |
| `kind` | {'str': 2037} |
| `memAvailableKb` | {'int': 2037} |
| `memTotalKb` | {'int': 2037} |
| `otherPssKb` | {'int': 2037} |
| `processes` | {'int': 2037} |
| `pssFallbackProcesses` | {'int': 2037} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
