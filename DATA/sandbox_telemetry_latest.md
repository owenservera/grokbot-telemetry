# sandbox_telemetry_parse — 2026-11-27 00:34:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=157126 lines=354
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 346 |
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
| `chromeBrowserPssKb` | {'int': 346} |
| `chromeGpuPssKb` | {'int': 346} |
| `chromeOtherPssKb` | {'int': 346} |
| `chromeProcesses` | {'int': 346} |
| `chromeProfiles` | {'int': 346} |
| `chromeRendererMaxPssKb` | {'int': 346} |
| `chromeRendererPssKb` | {'int': 346} |
| `chromeRenderers` | {'int': 346} |
| `chromeTabs` | {'int': 346} |
| `chromeTabsProbedProfiles` | {'int': 346} |
| `chromeUtilityPssKb` | {'int': 346} |
| `desktopPssKb` | {'int': 346} |
| `hostPssKb` | {'int': 346} |
| `kind` | {'str': 346} |
| `memAvailableKb` | {'int': 346} |
| `memTotalKb` | {'int': 346} |
| `otherPssKb` | {'int': 346} |
| `processes` | {'int': 346} |
| `pssFallbackProcesses` | {'int': 346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
