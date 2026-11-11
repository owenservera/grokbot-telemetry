# sandbox_telemetry_parse — 2026-11-11 10:01:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1574257 lines=3487
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3478 |
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
| `chromeBrowserPssKb` | {'int': 3478} |
| `chromeGpuPssKb` | {'int': 3478} |
| `chromeOtherPssKb` | {'int': 3478} |
| `chromeProcesses` | {'int': 3478} |
| `chromeProfiles` | {'int': 3478} |
| `chromeRendererMaxPssKb` | {'int': 3478} |
| `chromeRendererPssKb` | {'int': 3478} |
| `chromeRenderers` | {'int': 3478} |
| `chromeTabs` | {'int': 3478} |
| `chromeTabsProbedProfiles` | {'int': 3478} |
| `chromeUtilityPssKb` | {'int': 3478} |
| `desktopPssKb` | {'int': 3478} |
| `hostPssKb` | {'int': 3478} |
| `kind` | {'str': 3478} |
| `memAvailableKb` | {'int': 3478} |
| `memTotalKb` | {'int': 3478} |
| `otherPssKb` | {'int': 3478} |
| `processes` | {'int': 3478} |
| `pssFallbackProcesses` | {'int': 3478} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
