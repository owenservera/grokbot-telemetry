# sandbox_telemetry_parse — 2026-11-25 10:53:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2724885 lines=6037
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6022 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6022} |
| `chromeGpuPssKb` | {'int': 6022} |
| `chromeOtherPssKb` | {'int': 6022} |
| `chromeProcesses` | {'int': 6022} |
| `chromeProfiles` | {'int': 6022} |
| `chromeRendererMaxPssKb` | {'int': 6022} |
| `chromeRendererPssKb` | {'int': 6022} |
| `chromeRenderers` | {'int': 6022} |
| `chromeTabs` | {'int': 6022} |
| `chromeTabsProbedProfiles` | {'int': 6022} |
| `chromeUtilityPssKb` | {'int': 6022} |
| `desktopPssKb` | {'int': 6022} |
| `hostPssKb` | {'int': 6022} |
| `kind` | {'str': 6022} |
| `memAvailableKb` | {'int': 6022} |
| `memTotalKb` | {'int': 6022} |
| `otherPssKb` | {'int': 6022} |
| `processes` | {'int': 6022} |
| `pssFallbackProcesses` | {'int': 6022} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
