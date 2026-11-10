# sandbox_telemetry_parse — 2026-11-10 21:10:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1323236 lines=2932
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2923 |
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
| `chromeBrowserPssKb` | {'int': 2923} |
| `chromeGpuPssKb` | {'int': 2923} |
| `chromeOtherPssKb` | {'int': 2923} |
| `chromeProcesses` | {'int': 2923} |
| `chromeProfiles` | {'int': 2923} |
| `chromeRendererMaxPssKb` | {'int': 2923} |
| `chromeRendererPssKb` | {'int': 2923} |
| `chromeRenderers` | {'int': 2923} |
| `chromeTabs` | {'int': 2923} |
| `chromeTabsProbedProfiles` | {'int': 2923} |
| `chromeUtilityPssKb` | {'int': 2923} |
| `desktopPssKb` | {'int': 2923} |
| `hostPssKb` | {'int': 2923} |
| `kind` | {'str': 2923} |
| `memAvailableKb` | {'int': 2923} |
| `memTotalKb` | {'int': 2923} |
| `otherPssKb` | {'int': 2923} |
| `processes` | {'int': 2923} |
| `pssFallbackProcesses` | {'int': 2923} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
