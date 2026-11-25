# sandbox_telemetry_parse — 2026-11-25 15:44:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2818482 lines=6244
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6229 |
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
| `chromeBrowserPssKb` | {'int': 6229} |
| `chromeGpuPssKb` | {'int': 6229} |
| `chromeOtherPssKb` | {'int': 6229} |
| `chromeProcesses` | {'int': 6229} |
| `chromeProfiles` | {'int': 6229} |
| `chromeRendererMaxPssKb` | {'int': 6229} |
| `chromeRendererPssKb` | {'int': 6229} |
| `chromeRenderers` | {'int': 6229} |
| `chromeTabs` | {'int': 6229} |
| `chromeTabsProbedProfiles` | {'int': 6229} |
| `chromeUtilityPssKb` | {'int': 6229} |
| `desktopPssKb` | {'int': 6229} |
| `hostPssKb` | {'int': 6229} |
| `kind` | {'str': 6229} |
| `memAvailableKb` | {'int': 6229} |
| `memTotalKb` | {'int': 6229} |
| `otherPssKb` | {'int': 6229} |
| `processes` | {'int': 6229} |
| `pssFallbackProcesses` | {'int': 6229} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
