# sandbox_telemetry_parse — 2026-11-11 02:35:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1437248 lines=3184
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3175 |
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
| `chromeBrowserPssKb` | {'int': 3175} |
| `chromeGpuPssKb` | {'int': 3175} |
| `chromeOtherPssKb` | {'int': 3175} |
| `chromeProcesses` | {'int': 3175} |
| `chromeProfiles` | {'int': 3175} |
| `chromeRendererMaxPssKb` | {'int': 3175} |
| `chromeRendererPssKb` | {'int': 3175} |
| `chromeRenderers` | {'int': 3175} |
| `chromeTabs` | {'int': 3175} |
| `chromeTabsProbedProfiles` | {'int': 3175} |
| `chromeUtilityPssKb` | {'int': 3175} |
| `desktopPssKb` | {'int': 3175} |
| `hostPssKb` | {'int': 3175} |
| `kind` | {'str': 3175} |
| `memAvailableKb` | {'int': 3175} |
| `memTotalKb` | {'int': 3175} |
| `otherPssKb` | {'int': 3175} |
| `processes` | {'int': 3175} |
| `pssFallbackProcesses` | {'int': 3175} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
