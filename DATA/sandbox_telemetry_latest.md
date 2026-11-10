# sandbox_telemetry_parse — 2026-11-10 23:45:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1382062 lines=3062
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3053 |
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
| `chromeBrowserPssKb` | {'int': 3053} |
| `chromeGpuPssKb` | {'int': 3053} |
| `chromeOtherPssKb` | {'int': 3053} |
| `chromeProcesses` | {'int': 3053} |
| `chromeProfiles` | {'int': 3053} |
| `chromeRendererMaxPssKb` | {'int': 3053} |
| `chromeRendererPssKb` | {'int': 3053} |
| `chromeRenderers` | {'int': 3053} |
| `chromeTabs` | {'int': 3053} |
| `chromeTabsProbedProfiles` | {'int': 3053} |
| `chromeUtilityPssKb` | {'int': 3053} |
| `desktopPssKb` | {'int': 3053} |
| `hostPssKb` | {'int': 3053} |
| `kind` | {'str': 3053} |
| `memAvailableKb` | {'int': 3053} |
| `memTotalKb` | {'int': 3053} |
| `otherPssKb` | {'int': 3053} |
| `processes` | {'int': 3053} |
| `pssFallbackProcesses` | {'int': 3053} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
