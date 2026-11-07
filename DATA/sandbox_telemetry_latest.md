# sandbox_telemetry_parse — 2026-11-07 02:41:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=276205 lines=618
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 609 |
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
| `chromeBrowserPssKb` | {'int': 609} |
| `chromeGpuPssKb` | {'int': 609} |
| `chromeOtherPssKb` | {'int': 609} |
| `chromeProcesses` | {'int': 609} |
| `chromeProfiles` | {'int': 609} |
| `chromeRendererMaxPssKb` | {'int': 609} |
| `chromeRendererPssKb` | {'int': 609} |
| `chromeRenderers` | {'int': 609} |
| `chromeTabs` | {'int': 609} |
| `chromeTabsProbedProfiles` | {'int': 609} |
| `chromeUtilityPssKb` | {'int': 609} |
| `desktopPssKb` | {'int': 609} |
| `hostPssKb` | {'int': 609} |
| `kind` | {'str': 609} |
| `memAvailableKb` | {'int': 609} |
| `memTotalKb` | {'int': 609} |
| `otherPssKb` | {'int': 609} |
| `processes` | {'int': 609} |
| `pssFallbackProcesses` | {'int': 609} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
