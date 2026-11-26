# sandbox_telemetry_parse — 2026-11-26 21:12:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=87911 lines=201
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 193 |
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
| `chromeBrowserPssKb` | {'int': 193} |
| `chromeGpuPssKb` | {'int': 193} |
| `chromeOtherPssKb` | {'int': 193} |
| `chromeProcesses` | {'int': 193} |
| `chromeProfiles` | {'int': 193} |
| `chromeRendererMaxPssKb` | {'int': 193} |
| `chromeRendererPssKb` | {'int': 193} |
| `chromeRenderers` | {'int': 193} |
| `chromeTabs` | {'int': 193} |
| `chromeTabsProbedProfiles` | {'int': 193} |
| `chromeUtilityPssKb` | {'int': 193} |
| `desktopPssKb` | {'int': 193} |
| `hostPssKb` | {'int': 193} |
| `kind` | {'str': 193} |
| `memAvailableKb` | {'int': 193} |
| `memTotalKb` | {'int': 193} |
| `otherPssKb` | {'int': 193} |
| `processes` | {'int': 193} |
| `pssFallbackProcesses` | {'int': 193} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
