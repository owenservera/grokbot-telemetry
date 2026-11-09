# sandbox_telemetry_parse — 2026-11-10 00:38:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=908672 lines=2016
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2007 |
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
| `chromeBrowserPssKb` | {'int': 2007} |
| `chromeGpuPssKb` | {'int': 2007} |
| `chromeOtherPssKb` | {'int': 2007} |
| `chromeProcesses` | {'int': 2007} |
| `chromeProfiles` | {'int': 2007} |
| `chromeRendererMaxPssKb` | {'int': 2007} |
| `chromeRendererPssKb` | {'int': 2007} |
| `chromeRenderers` | {'int': 2007} |
| `chromeTabs` | {'int': 2007} |
| `chromeTabsProbedProfiles` | {'int': 2007} |
| `chromeUtilityPssKb` | {'int': 2007} |
| `desktopPssKb` | {'int': 2007} |
| `hostPssKb` | {'int': 2007} |
| `kind` | {'str': 2007} |
| `memAvailableKb` | {'int': 2007} |
| `memTotalKb` | {'int': 2007} |
| `otherPssKb` | {'int': 2007} |
| `processes` | {'int': 2007} |
| `pssFallbackProcesses` | {'int': 2007} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
