# sandbox_telemetry_parse — 2026-11-12 21:47:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2341044 lines=5181
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5172 |
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
| `chromeBrowserPssKb` | {'int': 5172} |
| `chromeGpuPssKb` | {'int': 5172} |
| `chromeOtherPssKb` | {'int': 5172} |
| `chromeProcesses` | {'int': 5172} |
| `chromeProfiles` | {'int': 5172} |
| `chromeRendererMaxPssKb` | {'int': 5172} |
| `chromeRendererPssKb` | {'int': 5172} |
| `chromeRenderers` | {'int': 5172} |
| `chromeTabs` | {'int': 5172} |
| `chromeTabsProbedProfiles` | {'int': 5172} |
| `chromeUtilityPssKb` | {'int': 5172} |
| `desktopPssKb` | {'int': 5172} |
| `hostPssKb` | {'int': 5172} |
| `kind` | {'str': 5172} |
| `memAvailableKb` | {'int': 5172} |
| `memTotalKb` | {'int': 5172} |
| `otherPssKb` | {'int': 5172} |
| `processes` | {'int': 5172} |
| `pssFallbackProcesses` | {'int': 5172} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
