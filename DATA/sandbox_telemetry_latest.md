# sandbox_telemetry_parse — 2026-11-10 06:20:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1016781 lines=2255
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2246 |
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
| `chromeBrowserPssKb` | {'int': 2246} |
| `chromeGpuPssKb` | {'int': 2246} |
| `chromeOtherPssKb` | {'int': 2246} |
| `chromeProcesses` | {'int': 2246} |
| `chromeProfiles` | {'int': 2246} |
| `chromeRendererMaxPssKb` | {'int': 2246} |
| `chromeRendererPssKb` | {'int': 2246} |
| `chromeRenderers` | {'int': 2246} |
| `chromeTabs` | {'int': 2246} |
| `chromeTabsProbedProfiles` | {'int': 2246} |
| `chromeUtilityPssKb` | {'int': 2246} |
| `desktopPssKb` | {'int': 2246} |
| `hostPssKb` | {'int': 2246} |
| `kind` | {'str': 2246} |
| `memAvailableKb` | {'int': 2246} |
| `memTotalKb` | {'int': 2246} |
| `otherPssKb` | {'int': 2246} |
| `processes` | {'int': 2246} |
| `pssFallbackProcesses` | {'int': 2246} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
