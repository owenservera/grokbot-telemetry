# sandbox_telemetry_parse — 2026-11-25 11:44:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2742513 lines=6076
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6061 |
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
| `chromeBrowserPssKb` | {'int': 6061} |
| `chromeGpuPssKb` | {'int': 6061} |
| `chromeOtherPssKb` | {'int': 6061} |
| `chromeProcesses` | {'int': 6061} |
| `chromeProfiles` | {'int': 6061} |
| `chromeRendererMaxPssKb` | {'int': 6061} |
| `chromeRendererPssKb` | {'int': 6061} |
| `chromeRenderers` | {'int': 6061} |
| `chromeTabs` | {'int': 6061} |
| `chromeTabsProbedProfiles` | {'int': 6061} |
| `chromeUtilityPssKb` | {'int': 6061} |
| `desktopPssKb` | {'int': 6061} |
| `hostPssKb` | {'int': 6061} |
| `kind` | {'str': 6061} |
| `memAvailableKb` | {'int': 6061} |
| `memTotalKb` | {'int': 6061} |
| `otherPssKb` | {'int': 6061} |
| `processes` | {'int': 6061} |
| `pssFallbackProcesses` | {'int': 6061} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
