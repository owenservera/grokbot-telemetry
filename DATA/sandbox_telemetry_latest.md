# sandbox_telemetry_parse — 2026-11-28 21:38:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1069373 lines=2370
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2362 |
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
| `chromeBrowserPssKb` | {'int': 2362} |
| `chromeGpuPssKb` | {'int': 2362} |
| `chromeOtherPssKb` | {'int': 2362} |
| `chromeProcesses` | {'int': 2362} |
| `chromeProfiles` | {'int': 2362} |
| `chromeRendererMaxPssKb` | {'int': 2362} |
| `chromeRendererPssKb` | {'int': 2362} |
| `chromeRenderers` | {'int': 2362} |
| `chromeTabs` | {'int': 2362} |
| `chromeTabsProbedProfiles` | {'int': 2362} |
| `chromeUtilityPssKb` | {'int': 2362} |
| `desktopPssKb` | {'int': 2362} |
| `hostPssKb` | {'int': 2362} |
| `kind` | {'str': 2362} |
| `memAvailableKb` | {'int': 2362} |
| `memTotalKb` | {'int': 2362} |
| `otherPssKb` | {'int': 2362} |
| `processes` | {'int': 2362} |
| `pssFallbackProcesses` | {'int': 2362} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
