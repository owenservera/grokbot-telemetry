# sandbox_telemetry_parse — 2026-11-10 21:16:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1325954 lines=2938
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2929 |
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
| `chromeBrowserPssKb` | {'int': 2929} |
| `chromeGpuPssKb` | {'int': 2929} |
| `chromeOtherPssKb` | {'int': 2929} |
| `chromeProcesses` | {'int': 2929} |
| `chromeProfiles` | {'int': 2929} |
| `chromeRendererMaxPssKb` | {'int': 2929} |
| `chromeRendererPssKb` | {'int': 2929} |
| `chromeRenderers` | {'int': 2929} |
| `chromeTabs` | {'int': 2929} |
| `chromeTabsProbedProfiles` | {'int': 2929} |
| `chromeUtilityPssKb` | {'int': 2929} |
| `desktopPssKb` | {'int': 2929} |
| `hostPssKb` | {'int': 2929} |
| `kind` | {'str': 2929} |
| `memAvailableKb` | {'int': 2929} |
| `memTotalKb` | {'int': 2929} |
| `otherPssKb` | {'int': 2929} |
| `processes` | {'int': 2929} |
| `pssFallbackProcesses` | {'int': 2929} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
