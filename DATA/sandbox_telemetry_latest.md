# sandbox_telemetry_parse — 2026-11-12 15:09:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2188417 lines=4844
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4835 |
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
| `chromeBrowserPssKb` | {'int': 4835} |
| `chromeGpuPssKb` | {'int': 4835} |
| `chromeOtherPssKb` | {'int': 4835} |
| `chromeProcesses` | {'int': 4835} |
| `chromeProfiles` | {'int': 4835} |
| `chromeRendererMaxPssKb` | {'int': 4835} |
| `chromeRendererPssKb` | {'int': 4835} |
| `chromeRenderers` | {'int': 4835} |
| `chromeTabs` | {'int': 4835} |
| `chromeTabsProbedProfiles` | {'int': 4835} |
| `chromeUtilityPssKb` | {'int': 4835} |
| `desktopPssKb` | {'int': 4835} |
| `hostPssKb` | {'int': 4835} |
| `kind` | {'str': 4835} |
| `memAvailableKb` | {'int': 4835} |
| `memTotalKb` | {'int': 4835} |
| `otherPssKb` | {'int': 4835} |
| `processes` | {'int': 4835} |
| `pssFallbackProcesses` | {'int': 4835} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
