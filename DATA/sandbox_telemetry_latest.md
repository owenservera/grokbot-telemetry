# sandbox_telemetry_parse — 2026-11-20 17:33:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1817705 lines=4030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4017 |
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
| `chromeBrowserPssKb` | {'int': 4017} |
| `chromeGpuPssKb` | {'int': 4017} |
| `chromeOtherPssKb` | {'int': 4017} |
| `chromeProcesses` | {'int': 4017} |
| `chromeProfiles` | {'int': 4017} |
| `chromeRendererMaxPssKb` | {'int': 4017} |
| `chromeRendererPssKb` | {'int': 4017} |
| `chromeRenderers` | {'int': 4017} |
| `chromeTabs` | {'int': 4017} |
| `chromeTabsProbedProfiles` | {'int': 4017} |
| `chromeUtilityPssKb` | {'int': 4017} |
| `desktopPssKb` | {'int': 4017} |
| `hostPssKb` | {'int': 4017} |
| `kind` | {'str': 4017} |
| `memAvailableKb` | {'int': 4017} |
| `memTotalKb` | {'int': 4017} |
| `otherPssKb` | {'int': 4017} |
| `processes` | {'int': 4017} |
| `pssFallbackProcesses` | {'int': 4017} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
