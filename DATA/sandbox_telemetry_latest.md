# sandbox_telemetry_parse — 2026-11-06 13:21:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=26773 lines=65
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 58 |
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
| `chromeBrowserPssKb` | {'int': 58} |
| `chromeGpuPssKb` | {'int': 58} |
| `chromeOtherPssKb` | {'int': 58} |
| `chromeProcesses` | {'int': 58} |
| `chromeProfiles` | {'int': 58} |
| `chromeRendererMaxPssKb` | {'int': 58} |
| `chromeRendererPssKb` | {'int': 58} |
| `chromeRenderers` | {'int': 58} |
| `chromeTabs` | {'int': 58} |
| `chromeTabsProbedProfiles` | {'int': 58} |
| `chromeUtilityPssKb` | {'int': 58} |
| `desktopPssKb` | {'int': 58} |
| `hostPssKb` | {'int': 58} |
| `kind` | {'str': 58} |
| `memAvailableKb` | {'int': 58} |
| `memTotalKb` | {'int': 58} |
| `otherPssKb` | {'int': 58} |
| `processes` | {'int': 58} |
| `pssFallbackProcesses` | {'int': 58} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
