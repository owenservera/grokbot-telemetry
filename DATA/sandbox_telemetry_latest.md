# sandbox_telemetry_parse — 2026-11-26 09:48:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3194815 lines=7076
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7061 |
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
| `chromeBrowserPssKb` | {'int': 7061} |
| `chromeGpuPssKb` | {'int': 7061} |
| `chromeOtherPssKb` | {'int': 7061} |
| `chromeProcesses` | {'int': 7061} |
| `chromeProfiles` | {'int': 7061} |
| `chromeRendererMaxPssKb` | {'int': 7061} |
| `chromeRendererPssKb` | {'int': 7061} |
| `chromeRenderers` | {'int': 7061} |
| `chromeTabs` | {'int': 7061} |
| `chromeTabsProbedProfiles` | {'int': 7061} |
| `chromeUtilityPssKb` | {'int': 7061} |
| `desktopPssKb` | {'int': 7061} |
| `hostPssKb` | {'int': 7061} |
| `kind` | {'str': 7061} |
| `memAvailableKb` | {'int': 7061} |
| `memTotalKb` | {'int': 7061} |
| `otherPssKb` | {'int': 7061} |
| `processes` | {'int': 7061} |
| `pssFallbackProcesses` | {'int': 7061} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
