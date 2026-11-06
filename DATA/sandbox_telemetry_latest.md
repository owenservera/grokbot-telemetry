# sandbox_telemetry_parse — 2026-11-06 12:46:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=16377 lines=42
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 35 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 35} |
| `chromeGpuPssKb` | {'int': 35} |
| `chromeOtherPssKb` | {'int': 35} |
| `chromeProcesses` | {'int': 35} |
| `chromeProfiles` | {'int': 35} |
| `chromeRendererMaxPssKb` | {'int': 35} |
| `chromeRendererPssKb` | {'int': 35} |
| `chromeRenderers` | {'int': 35} |
| `chromeTabs` | {'int': 35} |
| `chromeTabsProbedProfiles` | {'int': 35} |
| `chromeUtilityPssKb` | {'int': 35} |
| `desktopPssKb` | {'int': 35} |
| `hostPssKb` | {'int': 35} |
| `kind` | {'str': 35} |
| `memAvailableKb` | {'int': 35} |
| `memTotalKb` | {'int': 35} |
| `otherPssKb` | {'int': 35} |
| `processes` | {'int': 35} |
| `pssFallbackProcesses` | {'int': 35} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
