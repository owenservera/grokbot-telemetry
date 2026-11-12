# sandbox_telemetry_parse — 2026-11-12 09:57:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2073901 lines=4591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4582 |
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
| `chromeBrowserPssKb` | {'int': 4582} |
| `chromeGpuPssKb` | {'int': 4582} |
| `chromeOtherPssKb` | {'int': 4582} |
| `chromeProcesses` | {'int': 4582} |
| `chromeProfiles` | {'int': 4582} |
| `chromeRendererMaxPssKb` | {'int': 4582} |
| `chromeRendererPssKb` | {'int': 4582} |
| `chromeRenderers` | {'int': 4582} |
| `chromeTabs` | {'int': 4582} |
| `chromeTabsProbedProfiles` | {'int': 4582} |
| `chromeUtilityPssKb` | {'int': 4582} |
| `desktopPssKb` | {'int': 4582} |
| `hostPssKb` | {'int': 4582} |
| `kind` | {'str': 4582} |
| `memAvailableKb` | {'int': 4582} |
| `memTotalKb` | {'int': 4582} |
| `otherPssKb` | {'int': 4582} |
| `processes` | {'int': 4582} |
| `pssFallbackProcesses` | {'int': 4582} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
