# sandbox_telemetry_parse — 2026-11-25 15:18:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2807171 lines=6219
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6204 |
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
| `chromeBrowserPssKb` | {'int': 6204} |
| `chromeGpuPssKb` | {'int': 6204} |
| `chromeOtherPssKb` | {'int': 6204} |
| `chromeProcesses` | {'int': 6204} |
| `chromeProfiles` | {'int': 6204} |
| `chromeRendererMaxPssKb` | {'int': 6204} |
| `chromeRendererPssKb` | {'int': 6204} |
| `chromeRenderers` | {'int': 6204} |
| `chromeTabs` | {'int': 6204} |
| `chromeTabsProbedProfiles` | {'int': 6204} |
| `chromeUtilityPssKb` | {'int': 6204} |
| `desktopPssKb` | {'int': 6204} |
| `hostPssKb` | {'int': 6204} |
| `kind` | {'str': 6204} |
| `memAvailableKb` | {'int': 6204} |
| `memTotalKb` | {'int': 6204} |
| `otherPssKb` | {'int': 6204} |
| `processes` | {'int': 6204} |
| `pssFallbackProcesses` | {'int': 6204} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
