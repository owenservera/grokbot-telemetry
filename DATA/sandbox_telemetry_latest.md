# sandbox_telemetry_parse — 2026-11-11 03:28:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1452616 lines=3218
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3209 |
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
| `chromeBrowserPssKb` | {'int': 3209} |
| `chromeGpuPssKb` | {'int': 3209} |
| `chromeOtherPssKb` | {'int': 3209} |
| `chromeProcesses` | {'int': 3209} |
| `chromeProfiles` | {'int': 3209} |
| `chromeRendererMaxPssKb` | {'int': 3209} |
| `chromeRendererPssKb` | {'int': 3209} |
| `chromeRenderers` | {'int': 3209} |
| `chromeTabs` | {'int': 3209} |
| `chromeTabsProbedProfiles` | {'int': 3209} |
| `chromeUtilityPssKb` | {'int': 3209} |
| `desktopPssKb` | {'int': 3209} |
| `hostPssKb` | {'int': 3209} |
| `kind` | {'str': 3209} |
| `memAvailableKb` | {'int': 3209} |
| `memTotalKb` | {'int': 3209} |
| `otherPssKb` | {'int': 3209} |
| `processes` | {'int': 3209} |
| `pssFallbackProcesses` | {'int': 3209} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
