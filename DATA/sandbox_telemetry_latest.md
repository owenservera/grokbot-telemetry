# sandbox_telemetry_parse — 2026-11-10 19:47:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1292010 lines=2863
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2854 |
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
| `chromeBrowserPssKb` | {'int': 2854} |
| `chromeGpuPssKb` | {'int': 2854} |
| `chromeOtherPssKb` | {'int': 2854} |
| `chromeProcesses` | {'int': 2854} |
| `chromeProfiles` | {'int': 2854} |
| `chromeRendererMaxPssKb` | {'int': 2854} |
| `chromeRendererPssKb` | {'int': 2854} |
| `chromeRenderers` | {'int': 2854} |
| `chromeTabs` | {'int': 2854} |
| `chromeTabsProbedProfiles` | {'int': 2854} |
| `chromeUtilityPssKb` | {'int': 2854} |
| `desktopPssKb` | {'int': 2854} |
| `hostPssKb` | {'int': 2854} |
| `kind` | {'str': 2854} |
| `memAvailableKb` | {'int': 2854} |
| `memTotalKb` | {'int': 2854} |
| `otherPssKb` | {'int': 2854} |
| `processes` | {'int': 2854} |
| `pssFallbackProcesses` | {'int': 2854} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
