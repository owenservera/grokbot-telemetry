# sandbox_telemetry_parse — 2026-11-11 15:54:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1703232 lines=3772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3763 |
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
| `chromeBrowserPssKb` | {'int': 3763} |
| `chromeGpuPssKb` | {'int': 3763} |
| `chromeOtherPssKb` | {'int': 3763} |
| `chromeProcesses` | {'int': 3763} |
| `chromeProfiles` | {'int': 3763} |
| `chromeRendererMaxPssKb` | {'int': 3763} |
| `chromeRendererPssKb` | {'int': 3763} |
| `chromeRenderers` | {'int': 3763} |
| `chromeTabs` | {'int': 3763} |
| `chromeTabsProbedProfiles` | {'int': 3763} |
| `chromeUtilityPssKb` | {'int': 3763} |
| `desktopPssKb` | {'int': 3763} |
| `hostPssKb` | {'int': 3763} |
| `kind` | {'str': 3763} |
| `memAvailableKb` | {'int': 3763} |
| `memTotalKb` | {'int': 3763} |
| `otherPssKb` | {'int': 3763} |
| `processes` | {'int': 3763} |
| `pssFallbackProcesses` | {'int': 3763} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
