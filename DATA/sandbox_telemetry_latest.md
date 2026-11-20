# sandbox_telemetry_parse — 2026-11-20 12:24:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1712115 lines=3795
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3784 |
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
| `chromeBrowserPssKb` | {'int': 3784} |
| `chromeGpuPssKb` | {'int': 3784} |
| `chromeOtherPssKb` | {'int': 3784} |
| `chromeProcesses` | {'int': 3784} |
| `chromeProfiles` | {'int': 3784} |
| `chromeRendererMaxPssKb` | {'int': 3784} |
| `chromeRendererPssKb` | {'int': 3784} |
| `chromeRenderers` | {'int': 3784} |
| `chromeTabs` | {'int': 3784} |
| `chromeTabsProbedProfiles` | {'int': 3784} |
| `chromeUtilityPssKb` | {'int': 3784} |
| `desktopPssKb` | {'int': 3784} |
| `hostPssKb` | {'int': 3784} |
| `kind` | {'str': 3784} |
| `memAvailableKb` | {'int': 3784} |
| `memTotalKb` | {'int': 3784} |
| `otherPssKb` | {'int': 3784} |
| `processes` | {'int': 3784} |
| `pssFallbackProcesses` | {'int': 3784} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
