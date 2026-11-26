# sandbox_telemetry_parse — 2026-11-26 10:22:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3209298 lines=7108
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7093 |
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
| `chromeBrowserPssKb` | {'int': 7093} |
| `chromeGpuPssKb` | {'int': 7093} |
| `chromeOtherPssKb` | {'int': 7093} |
| `chromeProcesses` | {'int': 7093} |
| `chromeProfiles` | {'int': 7093} |
| `chromeRendererMaxPssKb` | {'int': 7093} |
| `chromeRendererPssKb` | {'int': 7093} |
| `chromeRenderers` | {'int': 7093} |
| `chromeTabs` | {'int': 7093} |
| `chromeTabsProbedProfiles` | {'int': 7093} |
| `chromeUtilityPssKb` | {'int': 7093} |
| `desktopPssKb` | {'int': 7093} |
| `hostPssKb` | {'int': 7093} |
| `kind` | {'str': 7093} |
| `memAvailableKb` | {'int': 7093} |
| `memTotalKb` | {'int': 7093} |
| `otherPssKb` | {'int': 7093} |
| `processes` | {'int': 7093} |
| `pssFallbackProcesses` | {'int': 7093} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
