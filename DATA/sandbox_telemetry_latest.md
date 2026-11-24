# sandbox_telemetry_parse — 2026-11-24 22:21:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2474350 lines=5483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5468 |
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
| `chromeBrowserPssKb` | {'int': 5468} |
| `chromeGpuPssKb` | {'int': 5468} |
| `chromeOtherPssKb` | {'int': 5468} |
| `chromeProcesses` | {'int': 5468} |
| `chromeProfiles` | {'int': 5468} |
| `chromeRendererMaxPssKb` | {'int': 5468} |
| `chromeRendererPssKb` | {'int': 5468} |
| `chromeRenderers` | {'int': 5468} |
| `chromeTabs` | {'int': 5468} |
| `chromeTabsProbedProfiles` | {'int': 5468} |
| `chromeUtilityPssKb` | {'int': 5468} |
| `desktopPssKb` | {'int': 5468} |
| `hostPssKb` | {'int': 5468} |
| `kind` | {'str': 5468} |
| `memAvailableKb` | {'int': 5468} |
| `memTotalKb` | {'int': 5468} |
| `otherPssKb` | {'int': 5468} |
| `processes` | {'int': 5468} |
| `pssFallbackProcesses` | {'int': 5468} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
