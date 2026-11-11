# sandbox_telemetry_parse — 2026-11-11 02:53:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1441316 lines=3193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3184 |
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
| `chromeBrowserPssKb` | {'int': 3184} |
| `chromeGpuPssKb` | {'int': 3184} |
| `chromeOtherPssKb` | {'int': 3184} |
| `chromeProcesses` | {'int': 3184} |
| `chromeProfiles` | {'int': 3184} |
| `chromeRendererMaxPssKb` | {'int': 3184} |
| `chromeRendererPssKb` | {'int': 3184} |
| `chromeRenderers` | {'int': 3184} |
| `chromeTabs` | {'int': 3184} |
| `chromeTabsProbedProfiles` | {'int': 3184} |
| `chromeUtilityPssKb` | {'int': 3184} |
| `desktopPssKb` | {'int': 3184} |
| `hostPssKb` | {'int': 3184} |
| `kind` | {'str': 3184} |
| `memAvailableKb` | {'int': 3184} |
| `memTotalKb` | {'int': 3184} |
| `otherPssKb` | {'int': 3184} |
| `processes` | {'int': 3184} |
| `pssFallbackProcesses` | {'int': 3184} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
