# sandbox_telemetry_parse — 2026-11-20 11:11:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1690416 lines=3747
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3736 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3736} |
| `chromeGpuPssKb` | {'int': 3736} |
| `chromeOtherPssKb` | {'int': 3736} |
| `chromeProcesses` | {'int': 3736} |
| `chromeProfiles` | {'int': 3736} |
| `chromeRendererMaxPssKb` | {'int': 3736} |
| `chromeRendererPssKb` | {'int': 3736} |
| `chromeRenderers` | {'int': 3736} |
| `chromeTabs` | {'int': 3736} |
| `chromeTabsProbedProfiles` | {'int': 3736} |
| `chromeUtilityPssKb` | {'int': 3736} |
| `desktopPssKb` | {'int': 3736} |
| `hostPssKb` | {'int': 3736} |
| `kind` | {'str': 3736} |
| `memAvailableKb` | {'int': 3736} |
| `memTotalKb` | {'int': 3736} |
| `otherPssKb` | {'int': 3736} |
| `processes` | {'int': 3736} |
| `pssFallbackProcesses` | {'int': 3736} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
