# sandbox_telemetry_parse — 2026-11-11 10:01:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1574710 lines=3488
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3479 |
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
| `chromeBrowserPssKb` | {'int': 3479} |
| `chromeGpuPssKb` | {'int': 3479} |
| `chromeOtherPssKb` | {'int': 3479} |
| `chromeProcesses` | {'int': 3479} |
| `chromeProfiles` | {'int': 3479} |
| `chromeRendererMaxPssKb` | {'int': 3479} |
| `chromeRendererPssKb` | {'int': 3479} |
| `chromeRenderers` | {'int': 3479} |
| `chromeTabs` | {'int': 3479} |
| `chromeTabsProbedProfiles` | {'int': 3479} |
| `chromeUtilityPssKb` | {'int': 3479} |
| `desktopPssKb` | {'int': 3479} |
| `hostPssKb` | {'int': 3479} |
| `kind` | {'str': 3479} |
| `memAvailableKb` | {'int': 3479} |
| `memTotalKb` | {'int': 3479} |
| `otherPssKb` | {'int': 3479} |
| `processes` | {'int': 3479} |
| `pssFallbackProcesses` | {'int': 3479} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
