# sandbox_telemetry_parse — 2026-11-12 18:22:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2264974 lines=5013
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5004 |
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
| `chromeBrowserPssKb` | {'int': 5004} |
| `chromeGpuPssKb` | {'int': 5004} |
| `chromeOtherPssKb` | {'int': 5004} |
| `chromeProcesses` | {'int': 5004} |
| `chromeProfiles` | {'int': 5004} |
| `chromeRendererMaxPssKb` | {'int': 5004} |
| `chromeRendererPssKb` | {'int': 5004} |
| `chromeRenderers` | {'int': 5004} |
| `chromeTabs` | {'int': 5004} |
| `chromeTabsProbedProfiles` | {'int': 5004} |
| `chromeUtilityPssKb` | {'int': 5004} |
| `desktopPssKb` | {'int': 5004} |
| `hostPssKb` | {'int': 5004} |
| `kind` | {'str': 5004} |
| `memAvailableKb` | {'int': 5004} |
| `memTotalKb` | {'int': 5004} |
| `otherPssKb` | {'int': 5004} |
| `processes` | {'int': 5004} |
| `pssFallbackProcesses` | {'int': 5004} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
