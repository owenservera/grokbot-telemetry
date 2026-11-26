# sandbox_telemetry_parse — 2026-11-26 17:59:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=21895 lines=55
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 47 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 47} |
| `chromeGpuPssKb` | {'int': 47} |
| `chromeOtherPssKb` | {'int': 47} |
| `chromeProcesses` | {'int': 47} |
| `chromeProfiles` | {'int': 47} |
| `chromeRendererMaxPssKb` | {'int': 47} |
| `chromeRendererPssKb` | {'int': 47} |
| `chromeRenderers` | {'int': 47} |
| `chromeTabs` | {'int': 47} |
| `chromeTabsProbedProfiles` | {'int': 47} |
| `chromeUtilityPssKb` | {'int': 47} |
| `desktopPssKb` | {'int': 47} |
| `hostPssKb` | {'int': 47} |
| `kind` | {'str': 47} |
| `memAvailableKb` | {'int': 47} |
| `memTotalKb` | {'int': 47} |
| `otherPssKb` | {'int': 47} |
| `processes` | {'int': 47} |
| `pssFallbackProcesses` | {'int': 47} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
