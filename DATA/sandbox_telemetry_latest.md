# sandbox_telemetry_parse — 2026-11-18 14:05:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=847919 lines=1881
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1874 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1874} |
| `chromeGpuPssKb` | {'int': 1874} |
| `chromeOtherPssKb` | {'int': 1874} |
| `chromeProcesses` | {'int': 1874} |
| `chromeProfiles` | {'int': 1874} |
| `chromeRendererMaxPssKb` | {'int': 1874} |
| `chromeRendererPssKb` | {'int': 1874} |
| `chromeRenderers` | {'int': 1874} |
| `chromeTabs` | {'int': 1874} |
| `chromeTabsProbedProfiles` | {'int': 1874} |
| `chromeUtilityPssKb` | {'int': 1874} |
| `desktopPssKb` | {'int': 1874} |
| `hostPssKb` | {'int': 1874} |
| `kind` | {'str': 1874} |
| `memAvailableKb` | {'int': 1874} |
| `memTotalKb` | {'int': 1874} |
| `otherPssKb` | {'int': 1874} |
| `processes` | {'int': 1874} |
| `pssFallbackProcesses` | {'int': 1874} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
