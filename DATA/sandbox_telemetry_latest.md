# sandbox_telemetry_parse — 2026-11-19 14:45:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1318470 lines=2923
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2914 |
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
| `chromeBrowserPssKb` | {'int': 2914} |
| `chromeGpuPssKb` | {'int': 2914} |
| `chromeOtherPssKb` | {'int': 2914} |
| `chromeProcesses` | {'int': 2914} |
| `chromeProfiles` | {'int': 2914} |
| `chromeRendererMaxPssKb` | {'int': 2914} |
| `chromeRendererPssKb` | {'int': 2914} |
| `chromeRenderers` | {'int': 2914} |
| `chromeTabs` | {'int': 2914} |
| `chromeTabsProbedProfiles` | {'int': 2914} |
| `chromeUtilityPssKb` | {'int': 2914} |
| `desktopPssKb` | {'int': 2914} |
| `hostPssKb` | {'int': 2914} |
| `kind` | {'str': 2914} |
| `memAvailableKb` | {'int': 2914} |
| `memTotalKb` | {'int': 2914} |
| `otherPssKb` | {'int': 2914} |
| `processes` | {'int': 2914} |
| `pssFallbackProcesses` | {'int': 2914} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
