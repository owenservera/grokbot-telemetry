# sandbox_telemetry_parse — 2026-11-25 00:05:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2509625 lines=5561
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5546 |
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
| `chromeBrowserPssKb` | {'int': 5546} |
| `chromeGpuPssKb` | {'int': 5546} |
| `chromeOtherPssKb` | {'int': 5546} |
| `chromeProcesses` | {'int': 5546} |
| `chromeProfiles` | {'int': 5546} |
| `chromeRendererMaxPssKb` | {'int': 5546} |
| `chromeRendererPssKb` | {'int': 5546} |
| `chromeRenderers` | {'int': 5546} |
| `chromeTabs` | {'int': 5546} |
| `chromeTabsProbedProfiles` | {'int': 5546} |
| `chromeUtilityPssKb` | {'int': 5546} |
| `desktopPssKb` | {'int': 5546} |
| `hostPssKb` | {'int': 5546} |
| `kind` | {'str': 5546} |
| `memAvailableKb` | {'int': 5546} |
| `memTotalKb` | {'int': 5546} |
| `otherPssKb` | {'int': 5546} |
| `processes` | {'int': 5546} |
| `pssFallbackProcesses` | {'int': 5546} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
