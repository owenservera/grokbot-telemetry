# sandbox_telemetry_parse — 2026-11-26 09:26:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3185755 lines=7056
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7041 |
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
| `chromeBrowserPssKb` | {'int': 7041} |
| `chromeGpuPssKb` | {'int': 7041} |
| `chromeOtherPssKb` | {'int': 7041} |
| `chromeProcesses` | {'int': 7041} |
| `chromeProfiles` | {'int': 7041} |
| `chromeRendererMaxPssKb` | {'int': 7041} |
| `chromeRendererPssKb` | {'int': 7041} |
| `chromeRenderers` | {'int': 7041} |
| `chromeTabs` | {'int': 7041} |
| `chromeTabsProbedProfiles` | {'int': 7041} |
| `chromeUtilityPssKb` | {'int': 7041} |
| `desktopPssKb` | {'int': 7041} |
| `hostPssKb` | {'int': 7041} |
| `kind` | {'str': 7041} |
| `memAvailableKb` | {'int': 7041} |
| `memTotalKb` | {'int': 7041} |
| `otherPssKb` | {'int': 7041} |
| `processes` | {'int': 7041} |
| `pssFallbackProcesses` | {'int': 7041} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
