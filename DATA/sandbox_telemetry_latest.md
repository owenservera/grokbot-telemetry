# sandbox_telemetry_parse — 2026-11-12 21:32:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2337428 lines=5173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5164 |
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
| `chromeBrowserPssKb` | {'int': 5164} |
| `chromeGpuPssKb` | {'int': 5164} |
| `chromeOtherPssKb` | {'int': 5164} |
| `chromeProcesses` | {'int': 5164} |
| `chromeProfiles` | {'int': 5164} |
| `chromeRendererMaxPssKb` | {'int': 5164} |
| `chromeRendererPssKb` | {'int': 5164} |
| `chromeRenderers` | {'int': 5164} |
| `chromeTabs` | {'int': 5164} |
| `chromeTabsProbedProfiles` | {'int': 5164} |
| `chromeUtilityPssKb` | {'int': 5164} |
| `desktopPssKb` | {'int': 5164} |
| `hostPssKb` | {'int': 5164} |
| `kind` | {'str': 5164} |
| `memAvailableKb` | {'int': 5164} |
| `memTotalKb` | {'int': 5164} |
| `otherPssKb` | {'int': 5164} |
| `processes` | {'int': 5164} |
| `pssFallbackProcesses` | {'int': 5164} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
