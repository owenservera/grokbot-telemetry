# sandbox_telemetry_parse — 2026-11-12 07:48:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2031351 lines=4497
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4488 |
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
| `chromeBrowserPssKb` | {'int': 4488} |
| `chromeGpuPssKb` | {'int': 4488} |
| `chromeOtherPssKb` | {'int': 4488} |
| `chromeProcesses` | {'int': 4488} |
| `chromeProfiles` | {'int': 4488} |
| `chromeRendererMaxPssKb` | {'int': 4488} |
| `chromeRendererPssKb` | {'int': 4488} |
| `chromeRenderers` | {'int': 4488} |
| `chromeTabs` | {'int': 4488} |
| `chromeTabsProbedProfiles` | {'int': 4488} |
| `chromeUtilityPssKb` | {'int': 4488} |
| `desktopPssKb` | {'int': 4488} |
| `hostPssKb` | {'int': 4488} |
| `kind` | {'str': 4488} |
| `memAvailableKb` | {'int': 4488} |
| `memTotalKb` | {'int': 4488} |
| `otherPssKb` | {'int': 4488} |
| `processes` | {'int': 4488} |
| `pssFallbackProcesses` | {'int': 4488} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
