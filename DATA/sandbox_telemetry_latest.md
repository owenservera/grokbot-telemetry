# sandbox_telemetry_parse — 2026-11-12 18:44:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2273581 lines=5032
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5023 |
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
| `chromeBrowserPssKb` | {'int': 5023} |
| `chromeGpuPssKb` | {'int': 5023} |
| `chromeOtherPssKb` | {'int': 5023} |
| `chromeProcesses` | {'int': 5023} |
| `chromeProfiles` | {'int': 5023} |
| `chromeRendererMaxPssKb` | {'int': 5023} |
| `chromeRendererPssKb` | {'int': 5023} |
| `chromeRenderers` | {'int': 5023} |
| `chromeTabs` | {'int': 5023} |
| `chromeTabsProbedProfiles` | {'int': 5023} |
| `chromeUtilityPssKb` | {'int': 5023} |
| `desktopPssKb` | {'int': 5023} |
| `hostPssKb` | {'int': 5023} |
| `kind` | {'str': 5023} |
| `memAvailableKb` | {'int': 5023} |
| `memTotalKb` | {'int': 5023} |
| `otherPssKb` | {'int': 5023} |
| `processes` | {'int': 5023} |
| `pssFallbackProcesses` | {'int': 5023} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
