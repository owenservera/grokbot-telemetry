# sandbox_telemetry_parse — 2026-11-12 22:31:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2354613 lines=5211
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5202 |
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
| `chromeBrowserPssKb` | {'int': 5202} |
| `chromeGpuPssKb` | {'int': 5202} |
| `chromeOtherPssKb` | {'int': 5202} |
| `chromeProcesses` | {'int': 5202} |
| `chromeProfiles` | {'int': 5202} |
| `chromeRendererMaxPssKb` | {'int': 5202} |
| `chromeRendererPssKb` | {'int': 5202} |
| `chromeRenderers` | {'int': 5202} |
| `chromeTabs` | {'int': 5202} |
| `chromeTabsProbedProfiles` | {'int': 5202} |
| `chromeUtilityPssKb` | {'int': 5202} |
| `desktopPssKb` | {'int': 5202} |
| `hostPssKb` | {'int': 5202} |
| `kind` | {'str': 5202} |
| `memAvailableKb` | {'int': 5202} |
| `memTotalKb` | {'int': 5202} |
| `otherPssKb` | {'int': 5202} |
| `processes` | {'int': 5202} |
| `pssFallbackProcesses` | {'int': 5202} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
