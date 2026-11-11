# sandbox_telemetry_parse — 2026-11-11 11:58:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1618170 lines=3584
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3575 |
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
| `chromeBrowserPssKb` | {'int': 3575} |
| `chromeGpuPssKb` | {'int': 3575} |
| `chromeOtherPssKb` | {'int': 3575} |
| `chromeProcesses` | {'int': 3575} |
| `chromeProfiles` | {'int': 3575} |
| `chromeRendererMaxPssKb` | {'int': 3575} |
| `chromeRendererPssKb` | {'int': 3575} |
| `chromeRenderers` | {'int': 3575} |
| `chromeTabs` | {'int': 3575} |
| `chromeTabsProbedProfiles` | {'int': 3575} |
| `chromeUtilityPssKb` | {'int': 3575} |
| `desktopPssKb` | {'int': 3575} |
| `hostPssKb` | {'int': 3575} |
| `kind` | {'str': 3575} |
| `memAvailableKb` | {'int': 3575} |
| `memTotalKb` | {'int': 3575} |
| `otherPssKb` | {'int': 3575} |
| `processes` | {'int': 3575} |
| `pssFallbackProcesses` | {'int': 3575} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
