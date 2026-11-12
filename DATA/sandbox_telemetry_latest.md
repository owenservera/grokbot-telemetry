# sandbox_telemetry_parse — 2026-11-12 22:05:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2346468 lines=5193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5184 |
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
| `chromeBrowserPssKb` | {'int': 5184} |
| `chromeGpuPssKb` | {'int': 5184} |
| `chromeOtherPssKb` | {'int': 5184} |
| `chromeProcesses` | {'int': 5184} |
| `chromeProfiles` | {'int': 5184} |
| `chromeRendererMaxPssKb` | {'int': 5184} |
| `chromeRendererPssKb` | {'int': 5184} |
| `chromeRenderers` | {'int': 5184} |
| `chromeTabs` | {'int': 5184} |
| `chromeTabsProbedProfiles` | {'int': 5184} |
| `chromeUtilityPssKb` | {'int': 5184} |
| `desktopPssKb` | {'int': 5184} |
| `hostPssKb` | {'int': 5184} |
| `kind` | {'str': 5184} |
| `memAvailableKb` | {'int': 5184} |
| `memTotalKb` | {'int': 5184} |
| `otherPssKb` | {'int': 5184} |
| `processes` | {'int': 5184} |
| `pssFallbackProcesses` | {'int': 5184} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
