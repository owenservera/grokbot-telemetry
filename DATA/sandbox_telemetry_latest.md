# sandbox_telemetry_parse — 2026-11-25 13:10:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2769190 lines=6135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6120 |
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
| `chromeBrowserPssKb` | {'int': 6120} |
| `chromeGpuPssKb` | {'int': 6120} |
| `chromeOtherPssKb` | {'int': 6120} |
| `chromeProcesses` | {'int': 6120} |
| `chromeProfiles` | {'int': 6120} |
| `chromeRendererMaxPssKb` | {'int': 6120} |
| `chromeRendererPssKb` | {'int': 6120} |
| `chromeRenderers` | {'int': 6120} |
| `chromeTabs` | {'int': 6120} |
| `chromeTabsProbedProfiles` | {'int': 6120} |
| `chromeUtilityPssKb` | {'int': 6120} |
| `desktopPssKb` | {'int': 6120} |
| `hostPssKb` | {'int': 6120} |
| `kind` | {'str': 6120} |
| `memAvailableKb` | {'int': 6120} |
| `memTotalKb` | {'int': 6120} |
| `otherPssKb` | {'int': 6120} |
| `processes` | {'int': 6120} |
| `pssFallbackProcesses` | {'int': 6120} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
