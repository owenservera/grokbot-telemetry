# sandbox_telemetry_parse — 2026-11-10 09:12:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1071508 lines=2376
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2367 |
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
| `chromeBrowserPssKb` | {'int': 2367} |
| `chromeGpuPssKb` | {'int': 2367} |
| `chromeOtherPssKb` | {'int': 2367} |
| `chromeProcesses` | {'int': 2367} |
| `chromeProfiles` | {'int': 2367} |
| `chromeRendererMaxPssKb` | {'int': 2367} |
| `chromeRendererPssKb` | {'int': 2367} |
| `chromeRenderers` | {'int': 2367} |
| `chromeTabs` | {'int': 2367} |
| `chromeTabsProbedProfiles` | {'int': 2367} |
| `chromeUtilityPssKb` | {'int': 2367} |
| `desktopPssKb` | {'int': 2367} |
| `hostPssKb` | {'int': 2367} |
| `kind` | {'str': 2367} |
| `memAvailableKb` | {'int': 2367} |
| `memTotalKb` | {'int': 2367} |
| `otherPssKb` | {'int': 2367} |
| `processes` | {'int': 2367} |
| `pssFallbackProcesses` | {'int': 2367} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
