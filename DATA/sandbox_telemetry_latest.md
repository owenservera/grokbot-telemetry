# sandbox_telemetry_parse — 2026-11-28 16:47:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=970197 lines=2151
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2143 |
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
| `chromeBrowserPssKb` | {'int': 2143} |
| `chromeGpuPssKb` | {'int': 2143} |
| `chromeOtherPssKb` | {'int': 2143} |
| `chromeProcesses` | {'int': 2143} |
| `chromeProfiles` | {'int': 2143} |
| `chromeRendererMaxPssKb` | {'int': 2143} |
| `chromeRendererPssKb` | {'int': 2143} |
| `chromeRenderers` | {'int': 2143} |
| `chromeTabs` | {'int': 2143} |
| `chromeTabsProbedProfiles` | {'int': 2143} |
| `chromeUtilityPssKb` | {'int': 2143} |
| `desktopPssKb` | {'int': 2143} |
| `hostPssKb` | {'int': 2143} |
| `kind` | {'str': 2143} |
| `memAvailableKb` | {'int': 2143} |
| `memTotalKb` | {'int': 2143} |
| `otherPssKb` | {'int': 2143} |
| `processes` | {'int': 2143} |
| `pssFallbackProcesses` | {'int': 2143} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
