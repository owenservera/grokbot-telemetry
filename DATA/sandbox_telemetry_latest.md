# sandbox_telemetry_parse — 2026-11-10 15:52:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1208685 lines=2679
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2670 |
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
| `chromeBrowserPssKb` | {'int': 2670} |
| `chromeGpuPssKb` | {'int': 2670} |
| `chromeOtherPssKb` | {'int': 2670} |
| `chromeProcesses` | {'int': 2670} |
| `chromeProfiles` | {'int': 2670} |
| `chromeRendererMaxPssKb` | {'int': 2670} |
| `chromeRendererPssKb` | {'int': 2670} |
| `chromeRenderers` | {'int': 2670} |
| `chromeTabs` | {'int': 2670} |
| `chromeTabsProbedProfiles` | {'int': 2670} |
| `chromeUtilityPssKb` | {'int': 2670} |
| `desktopPssKb` | {'int': 2670} |
| `hostPssKb` | {'int': 2670} |
| `kind` | {'str': 2670} |
| `memAvailableKb` | {'int': 2670} |
| `memTotalKb` | {'int': 2670} |
| `otherPssKb` | {'int': 2670} |
| `processes` | {'int': 2670} |
| `pssFallbackProcesses` | {'int': 2670} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
