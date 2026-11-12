# sandbox_telemetry_parse — 2026-11-12 09:30:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2064388 lines=4570
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4561 |
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
| `chromeBrowserPssKb` | {'int': 4561} |
| `chromeGpuPssKb` | {'int': 4561} |
| `chromeOtherPssKb` | {'int': 4561} |
| `chromeProcesses` | {'int': 4561} |
| `chromeProfiles` | {'int': 4561} |
| `chromeRendererMaxPssKb` | {'int': 4561} |
| `chromeRendererPssKb` | {'int': 4561} |
| `chromeRenderers` | {'int': 4561} |
| `chromeTabs` | {'int': 4561} |
| `chromeTabsProbedProfiles` | {'int': 4561} |
| `chromeUtilityPssKb` | {'int': 4561} |
| `desktopPssKb` | {'int': 4561} |
| `hostPssKb` | {'int': 4561} |
| `kind` | {'str': 4561} |
| `memAvailableKb` | {'int': 4561} |
| `memTotalKb` | {'int': 4561} |
| `otherPssKb` | {'int': 4561} |
| `processes` | {'int': 4561} |
| `pssFallbackProcesses` | {'int': 4561} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
