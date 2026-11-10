# sandbox_telemetry_parse — 2026-11-11 00:26:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1398815 lines=3099
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3090 |
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
| `chromeBrowserPssKb` | {'int': 3090} |
| `chromeGpuPssKb` | {'int': 3090} |
| `chromeOtherPssKb` | {'int': 3090} |
| `chromeProcesses` | {'int': 3090} |
| `chromeProfiles` | {'int': 3090} |
| `chromeRendererMaxPssKb` | {'int': 3090} |
| `chromeRendererPssKb` | {'int': 3090} |
| `chromeRenderers` | {'int': 3090} |
| `chromeTabs` | {'int': 3090} |
| `chromeTabsProbedProfiles` | {'int': 3090} |
| `chromeUtilityPssKb` | {'int': 3090} |
| `desktopPssKb` | {'int': 3090} |
| `hostPssKb` | {'int': 3090} |
| `kind` | {'str': 3090} |
| `memAvailableKb` | {'int': 3090} |
| `memTotalKb` | {'int': 3090} |
| `otherPssKb` | {'int': 3090} |
| `processes` | {'int': 3090} |
| `pssFallbackProcesses` | {'int': 3090} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
