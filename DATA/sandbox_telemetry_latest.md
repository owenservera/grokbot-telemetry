# sandbox_telemetry_parse — 2026-11-25 17:58:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2860988 lines=6338
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6323 |
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
| `chromeBrowserPssKb` | {'int': 6323} |
| `chromeGpuPssKb` | {'int': 6323} |
| `chromeOtherPssKb` | {'int': 6323} |
| `chromeProcesses` | {'int': 6323} |
| `chromeProfiles` | {'int': 6323} |
| `chromeRendererMaxPssKb` | {'int': 6323} |
| `chromeRendererPssKb` | {'int': 6323} |
| `chromeRenderers` | {'int': 6323} |
| `chromeTabs` | {'int': 6323} |
| `chromeTabsProbedProfiles` | {'int': 6323} |
| `chromeUtilityPssKb` | {'int': 6323} |
| `desktopPssKb` | {'int': 6323} |
| `hostPssKb` | {'int': 6323} |
| `kind` | {'str': 6323} |
| `memAvailableKb` | {'int': 6323} |
| `memTotalKb` | {'int': 6323} |
| `otherPssKb` | {'int': 6323} |
| `processes` | {'int': 6323} |
| `pssFallbackProcesses` | {'int': 6323} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
