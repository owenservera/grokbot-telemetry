# sandbox_telemetry_parse — 2026-11-12 10:10:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2078884 lines=4602
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4593 |
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
| `chromeBrowserPssKb` | {'int': 4593} |
| `chromeGpuPssKb` | {'int': 4593} |
| `chromeOtherPssKb` | {'int': 4593} |
| `chromeProcesses` | {'int': 4593} |
| `chromeProfiles` | {'int': 4593} |
| `chromeRendererMaxPssKb` | {'int': 4593} |
| `chromeRendererPssKb` | {'int': 4593} |
| `chromeRenderers` | {'int': 4593} |
| `chromeTabs` | {'int': 4593} |
| `chromeTabsProbedProfiles` | {'int': 4593} |
| `chromeUtilityPssKb` | {'int': 4593} |
| `desktopPssKb` | {'int': 4593} |
| `hostPssKb` | {'int': 4593} |
| `kind` | {'str': 4593} |
| `memAvailableKb` | {'int': 4593} |
| `memTotalKb` | {'int': 4593} |
| `otherPssKb` | {'int': 4593} |
| `processes` | {'int': 4593} |
| `pssFallbackProcesses` | {'int': 4593} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
