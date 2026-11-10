# sandbox_telemetry_parse — 2026-11-10 01:36:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=929474 lines=2062
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2053 |
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
| `chromeBrowserPssKb` | {'int': 2053} |
| `chromeGpuPssKb` | {'int': 2053} |
| `chromeOtherPssKb` | {'int': 2053} |
| `chromeProcesses` | {'int': 2053} |
| `chromeProfiles` | {'int': 2053} |
| `chromeRendererMaxPssKb` | {'int': 2053} |
| `chromeRendererPssKb` | {'int': 2053} |
| `chromeRenderers` | {'int': 2053} |
| `chromeTabs` | {'int': 2053} |
| `chromeTabsProbedProfiles` | {'int': 2053} |
| `chromeUtilityPssKb` | {'int': 2053} |
| `desktopPssKb` | {'int': 2053} |
| `hostPssKb` | {'int': 2053} |
| `kind` | {'str': 2053} |
| `memAvailableKb` | {'int': 2053} |
| `memTotalKb` | {'int': 2053} |
| `otherPssKb` | {'int': 2053} |
| `processes` | {'int': 2053} |
| `pssFallbackProcesses` | {'int': 2053} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
