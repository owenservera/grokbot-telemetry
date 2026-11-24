# sandbox_telemetry_parse — 2026-11-24 18:47:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2401946 lines=5323
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5308 |
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
| `chromeBrowserPssKb` | {'int': 5308} |
| `chromeGpuPssKb` | {'int': 5308} |
| `chromeOtherPssKb` | {'int': 5308} |
| `chromeProcesses` | {'int': 5308} |
| `chromeProfiles` | {'int': 5308} |
| `chromeRendererMaxPssKb` | {'int': 5308} |
| `chromeRendererPssKb` | {'int': 5308} |
| `chromeRenderers` | {'int': 5308} |
| `chromeTabs` | {'int': 5308} |
| `chromeTabsProbedProfiles` | {'int': 5308} |
| `chromeUtilityPssKb` | {'int': 5308} |
| `desktopPssKb` | {'int': 5308} |
| `hostPssKb` | {'int': 5308} |
| `kind` | {'str': 5308} |
| `memAvailableKb` | {'int': 5308} |
| `memTotalKb` | {'int': 5308} |
| `otherPssKb` | {'int': 5308} |
| `processes` | {'int': 5308} |
| `pssFallbackProcesses` | {'int': 5308} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
