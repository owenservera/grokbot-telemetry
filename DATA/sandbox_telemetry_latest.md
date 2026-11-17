# sandbox_telemetry_parse — 2026-11-17 16:29:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=455886 lines=1014
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1007 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1007} |
| `chromeGpuPssKb` | {'int': 1007} |
| `chromeOtherPssKb` | {'int': 1007} |
| `chromeProcesses` | {'int': 1007} |
| `chromeProfiles` | {'int': 1007} |
| `chromeRendererMaxPssKb` | {'int': 1007} |
| `chromeRendererPssKb` | {'int': 1007} |
| `chromeRenderers` | {'int': 1007} |
| `chromeTabs` | {'int': 1007} |
| `chromeTabsProbedProfiles` | {'int': 1007} |
| `chromeUtilityPssKb` | {'int': 1007} |
| `desktopPssKb` | {'int': 1007} |
| `hostPssKb` | {'int': 1007} |
| `kind` | {'str': 1007} |
| `memAvailableKb` | {'int': 1007} |
| `memTotalKb` | {'int': 1007} |
| `otherPssKb` | {'int': 1007} |
| `processes` | {'int': 1007} |
| `pssFallbackProcesses` | {'int': 1007} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
