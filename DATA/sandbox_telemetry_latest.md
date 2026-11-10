# sandbox_telemetry_parse — 2026-11-10 13:27:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1156179 lines=2563
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2554 |
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
| `chromeBrowserPssKb` | {'int': 2554} |
| `chromeGpuPssKb` | {'int': 2554} |
| `chromeOtherPssKb` | {'int': 2554} |
| `chromeProcesses` | {'int': 2554} |
| `chromeProfiles` | {'int': 2554} |
| `chromeRendererMaxPssKb` | {'int': 2554} |
| `chromeRendererPssKb` | {'int': 2554} |
| `chromeRenderers` | {'int': 2554} |
| `chromeTabs` | {'int': 2554} |
| `chromeTabsProbedProfiles` | {'int': 2554} |
| `chromeUtilityPssKb` | {'int': 2554} |
| `desktopPssKb` | {'int': 2554} |
| `hostPssKb` | {'int': 2554} |
| `kind` | {'str': 2554} |
| `memAvailableKb` | {'int': 2554} |
| `memTotalKb` | {'int': 2554} |
| `otherPssKb` | {'int': 2554} |
| `processes` | {'int': 2554} |
| `pssFallbackProcesses` | {'int': 2554} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
