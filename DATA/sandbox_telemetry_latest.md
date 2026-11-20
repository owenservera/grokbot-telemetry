# sandbox_telemetry_parse — 2026-11-20 14:53:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1762335 lines=3906
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3895 |
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
| `chromeBrowserPssKb` | {'int': 3895} |
| `chromeGpuPssKb` | {'int': 3895} |
| `chromeOtherPssKb` | {'int': 3895} |
| `chromeProcesses` | {'int': 3895} |
| `chromeProfiles` | {'int': 3895} |
| `chromeRendererMaxPssKb` | {'int': 3895} |
| `chromeRendererPssKb` | {'int': 3895} |
| `chromeRenderers` | {'int': 3895} |
| `chromeTabs` | {'int': 3895} |
| `chromeTabsProbedProfiles` | {'int': 3895} |
| `chromeUtilityPssKb` | {'int': 3895} |
| `desktopPssKb` | {'int': 3895} |
| `hostPssKb` | {'int': 3895} |
| `kind` | {'str': 3895} |
| `memAvailableKb` | {'int': 3895} |
| `memTotalKb` | {'int': 3895} |
| `otherPssKb` | {'int': 3895} |
| `processes` | {'int': 3895} |
| `pssFallbackProcesses` | {'int': 3895} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
