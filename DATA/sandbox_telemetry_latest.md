# sandbox_telemetry_parse — 2026-11-10 22:43:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1359894 lines=3013
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3004 |
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
| `chromeBrowserPssKb` | {'int': 3004} |
| `chromeGpuPssKb` | {'int': 3004} |
| `chromeOtherPssKb` | {'int': 3004} |
| `chromeProcesses` | {'int': 3004} |
| `chromeProfiles` | {'int': 3004} |
| `chromeRendererMaxPssKb` | {'int': 3004} |
| `chromeRendererPssKb` | {'int': 3004} |
| `chromeRenderers` | {'int': 3004} |
| `chromeTabs` | {'int': 3004} |
| `chromeTabsProbedProfiles` | {'int': 3004} |
| `chromeUtilityPssKb` | {'int': 3004} |
| `desktopPssKb` | {'int': 3004} |
| `hostPssKb` | {'int': 3004} |
| `kind` | {'str': 3004} |
| `memAvailableKb` | {'int': 3004} |
| `memTotalKb` | {'int': 3004} |
| `otherPssKb` | {'int': 3004} |
| `processes` | {'int': 3004} |
| `pssFallbackProcesses` | {'int': 3004} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
