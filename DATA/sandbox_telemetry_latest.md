# sandbox_telemetry_parse — 2026-11-24 11:28:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2265703 lines=5022
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5007 |
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
| `chromeBrowserPssKb` | {'int': 5007} |
| `chromeGpuPssKb` | {'int': 5007} |
| `chromeOtherPssKb` | {'int': 5007} |
| `chromeProcesses` | {'int': 5007} |
| `chromeProfiles` | {'int': 5007} |
| `chromeRendererMaxPssKb` | {'int': 5007} |
| `chromeRendererPssKb` | {'int': 5007} |
| `chromeRenderers` | {'int': 5007} |
| `chromeTabs` | {'int': 5007} |
| `chromeTabsProbedProfiles` | {'int': 5007} |
| `chromeUtilityPssKb` | {'int': 5007} |
| `desktopPssKb` | {'int': 5007} |
| `hostPssKb` | {'int': 5007} |
| `kind` | {'str': 5007} |
| `memAvailableKb` | {'int': 5007} |
| `memTotalKb` | {'int': 5007} |
| `otherPssKb` | {'int': 5007} |
| `processes` | {'int': 5007} |
| `pssFallbackProcesses` | {'int': 5007} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
