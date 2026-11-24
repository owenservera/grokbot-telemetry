# sandbox_telemetry_parse — 2026-11-24 11:08:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2257567 lines=5004
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4989 |
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
| `chromeBrowserPssKb` | {'int': 4989} |
| `chromeGpuPssKb` | {'int': 4989} |
| `chromeOtherPssKb` | {'int': 4989} |
| `chromeProcesses` | {'int': 4989} |
| `chromeProfiles` | {'int': 4989} |
| `chromeRendererMaxPssKb` | {'int': 4989} |
| `chromeRendererPssKb` | {'int': 4989} |
| `chromeRenderers` | {'int': 4989} |
| `chromeTabs` | {'int': 4989} |
| `chromeTabsProbedProfiles` | {'int': 4989} |
| `chromeUtilityPssKb` | {'int': 4989} |
| `desktopPssKb` | {'int': 4989} |
| `hostPssKb` | {'int': 4989} |
| `kind` | {'str': 4989} |
| `memAvailableKb` | {'int': 4989} |
| `memTotalKb` | {'int': 4989} |
| `otherPssKb` | {'int': 4989} |
| `processes` | {'int': 4989} |
| `pssFallbackProcesses` | {'int': 4989} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
