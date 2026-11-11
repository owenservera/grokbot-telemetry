# sandbox_telemetry_parse — 2026-11-11 15:07:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1686499 lines=3735
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3726 |
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
| `chromeBrowserPssKb` | {'int': 3726} |
| `chromeGpuPssKb` | {'int': 3726} |
| `chromeOtherPssKb` | {'int': 3726} |
| `chromeProcesses` | {'int': 3726} |
| `chromeProfiles` | {'int': 3726} |
| `chromeRendererMaxPssKb` | {'int': 3726} |
| `chromeRendererPssKb` | {'int': 3726} |
| `chromeRenderers` | {'int': 3726} |
| `chromeTabs` | {'int': 3726} |
| `chromeTabsProbedProfiles` | {'int': 3726} |
| `chromeUtilityPssKb` | {'int': 3726} |
| `desktopPssKb` | {'int': 3726} |
| `hostPssKb` | {'int': 3726} |
| `kind` | {'str': 3726} |
| `memAvailableKb` | {'int': 3726} |
| `memTotalKb` | {'int': 3726} |
| `otherPssKb` | {'int': 3726} |
| `processes` | {'int': 3726} |
| `pssFallbackProcesses` | {'int': 3726} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
