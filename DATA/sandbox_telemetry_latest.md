# sandbox_telemetry_parse — 2026-11-24 09:37:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2228180 lines=4939
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4924 |
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
| `chromeBrowserPssKb` | {'int': 4924} |
| `chromeGpuPssKb` | {'int': 4924} |
| `chromeOtherPssKb` | {'int': 4924} |
| `chromeProcesses` | {'int': 4924} |
| `chromeProfiles` | {'int': 4924} |
| `chromeRendererMaxPssKb` | {'int': 4924} |
| `chromeRendererPssKb` | {'int': 4924} |
| `chromeRenderers` | {'int': 4924} |
| `chromeTabs` | {'int': 4924} |
| `chromeTabsProbedProfiles` | {'int': 4924} |
| `chromeUtilityPssKb` | {'int': 4924} |
| `desktopPssKb` | {'int': 4924} |
| `hostPssKb` | {'int': 4924} |
| `kind` | {'str': 4924} |
| `memAvailableKb` | {'int': 4924} |
| `memTotalKb` | {'int': 4924} |
| `otherPssKb` | {'int': 4924} |
| `processes` | {'int': 4924} |
| `pssFallbackProcesses` | {'int': 4924} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
