# sandbox_telemetry_parse — 2026-11-24 21:39:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2461234 lines=5454
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5439 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5439} |
| `chromeGpuPssKb` | {'int': 5439} |
| `chromeOtherPssKb` | {'int': 5439} |
| `chromeProcesses` | {'int': 5439} |
| `chromeProfiles` | {'int': 5439} |
| `chromeRendererMaxPssKb` | {'int': 5439} |
| `chromeRendererPssKb` | {'int': 5439} |
| `chromeRenderers` | {'int': 5439} |
| `chromeTabs` | {'int': 5439} |
| `chromeTabsProbedProfiles` | {'int': 5439} |
| `chromeUtilityPssKb` | {'int': 5439} |
| `desktopPssKb` | {'int': 5439} |
| `hostPssKb` | {'int': 5439} |
| `kind` | {'str': 5439} |
| `memAvailableKb` | {'int': 5439} |
| `memTotalKb` | {'int': 5439} |
| `otherPssKb` | {'int': 5439} |
| `processes` | {'int': 5439} |
| `pssFallbackProcesses` | {'int': 5439} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
