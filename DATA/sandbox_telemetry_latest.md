# sandbox_telemetry_parse — 2026-11-27 06:04:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=274281 lines=613
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 605 |
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
| `chromeBrowserPssKb` | {'int': 605} |
| `chromeGpuPssKb` | {'int': 605} |
| `chromeOtherPssKb` | {'int': 605} |
| `chromeProcesses` | {'int': 605} |
| `chromeProfiles` | {'int': 605} |
| `chromeRendererMaxPssKb` | {'int': 605} |
| `chromeRendererPssKb` | {'int': 605} |
| `chromeRenderers` | {'int': 605} |
| `chromeTabs` | {'int': 605} |
| `chromeTabsProbedProfiles` | {'int': 605} |
| `chromeUtilityPssKb` | {'int': 605} |
| `desktopPssKb` | {'int': 605} |
| `hostPssKb` | {'int': 605} |
| `kind` | {'str': 605} |
| `memAvailableKb` | {'int': 605} |
| `memTotalKb` | {'int': 605} |
| `otherPssKb` | {'int': 605} |
| `processes` | {'int': 605} |
| `pssFallbackProcesses` | {'int': 605} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
