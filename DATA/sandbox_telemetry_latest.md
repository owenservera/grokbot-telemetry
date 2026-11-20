# sandbox_telemetry_parse — 2026-11-20 18:52:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1843941 lines=4088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4075 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4075} |
| `chromeGpuPssKb` | {'int': 4075} |
| `chromeOtherPssKb` | {'int': 4075} |
| `chromeProcesses` | {'int': 4075} |
| `chromeProfiles` | {'int': 4075} |
| `chromeRendererMaxPssKb` | {'int': 4075} |
| `chromeRendererPssKb` | {'int': 4075} |
| `chromeRenderers` | {'int': 4075} |
| `chromeTabs` | {'int': 4075} |
| `chromeTabsProbedProfiles` | {'int': 4075} |
| `chromeUtilityPssKb` | {'int': 4075} |
| `desktopPssKb` | {'int': 4075} |
| `hostPssKb` | {'int': 4075} |
| `kind` | {'str': 4075} |
| `memAvailableKb` | {'int': 4075} |
| `memTotalKb` | {'int': 4075} |
| `otherPssKb` | {'int': 4075} |
| `processes` | {'int': 4075} |
| `pssFallbackProcesses` | {'int': 4075} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
