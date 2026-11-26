# sandbox_telemetry_parse — 2026-11-26 23:37:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=137215 lines=310
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 302 |
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
| `chromeBrowserPssKb` | {'int': 302} |
| `chromeGpuPssKb` | {'int': 302} |
| `chromeOtherPssKb` | {'int': 302} |
| `chromeProcesses` | {'int': 302} |
| `chromeProfiles` | {'int': 302} |
| `chromeRendererMaxPssKb` | {'int': 302} |
| `chromeRendererPssKb` | {'int': 302} |
| `chromeRenderers` | {'int': 302} |
| `chromeTabs` | {'int': 302} |
| `chromeTabsProbedProfiles` | {'int': 302} |
| `chromeUtilityPssKb` | {'int': 302} |
| `desktopPssKb` | {'int': 302} |
| `hostPssKb` | {'int': 302} |
| `kind` | {'str': 302} |
| `memAvailableKb` | {'int': 302} |
| `memTotalKb` | {'int': 302} |
| `otherPssKb` | {'int': 302} |
| `processes` | {'int': 302} |
| `pssFallbackProcesses` | {'int': 302} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
