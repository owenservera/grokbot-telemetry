# sandbox_telemetry_parse — 2026-11-24 21:07:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2451282 lines=5432
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5417 |
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
| `chromeBrowserPssKb` | {'int': 5417} |
| `chromeGpuPssKb` | {'int': 5417} |
| `chromeOtherPssKb` | {'int': 5417} |
| `chromeProcesses` | {'int': 5417} |
| `chromeProfiles` | {'int': 5417} |
| `chromeRendererMaxPssKb` | {'int': 5417} |
| `chromeRendererPssKb` | {'int': 5417} |
| `chromeRenderers` | {'int': 5417} |
| `chromeTabs` | {'int': 5417} |
| `chromeTabsProbedProfiles` | {'int': 5417} |
| `chromeUtilityPssKb` | {'int': 5417} |
| `desktopPssKb` | {'int': 5417} |
| `hostPssKb` | {'int': 5417} |
| `kind` | {'str': 5417} |
| `memAvailableKb` | {'int': 5417} |
| `memTotalKb` | {'int': 5417} |
| `otherPssKb` | {'int': 5417} |
| `processes` | {'int': 5417} |
| `pssFallbackProcesses` | {'int': 5417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
