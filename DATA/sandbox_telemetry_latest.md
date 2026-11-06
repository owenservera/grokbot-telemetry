# sandbox_telemetry_parse — 2026-11-07 00:15:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=229606 lines=515
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 506 |
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
| `chromeBrowserPssKb` | {'int': 506} |
| `chromeGpuPssKb` | {'int': 506} |
| `chromeOtherPssKb` | {'int': 506} |
| `chromeProcesses` | {'int': 506} |
| `chromeProfiles` | {'int': 506} |
| `chromeRendererMaxPssKb` | {'int': 506} |
| `chromeRendererPssKb` | {'int': 506} |
| `chromeRenderers` | {'int': 506} |
| `chromeTabs` | {'int': 506} |
| `chromeTabsProbedProfiles` | {'int': 506} |
| `chromeUtilityPssKb` | {'int': 506} |
| `desktopPssKb` | {'int': 506} |
| `hostPssKb` | {'int': 506} |
| `kind` | {'str': 506} |
| `memAvailableKb` | {'int': 506} |
| `memTotalKb` | {'int': 506} |
| `otherPssKb` | {'int': 506} |
| `processes` | {'int': 506} |
| `pssFallbackProcesses` | {'int': 506} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
