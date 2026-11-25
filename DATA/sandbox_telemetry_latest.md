# sandbox_telemetry_parse — 2026-11-25 15:33:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2813502 lines=6233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6218 |
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
| `chromeBrowserPssKb` | {'int': 6218} |
| `chromeGpuPssKb` | {'int': 6218} |
| `chromeOtherPssKb` | {'int': 6218} |
| `chromeProcesses` | {'int': 6218} |
| `chromeProfiles` | {'int': 6218} |
| `chromeRendererMaxPssKb` | {'int': 6218} |
| `chromeRendererPssKb` | {'int': 6218} |
| `chromeRenderers` | {'int': 6218} |
| `chromeTabs` | {'int': 6218} |
| `chromeTabsProbedProfiles` | {'int': 6218} |
| `chromeUtilityPssKb` | {'int': 6218} |
| `desktopPssKb` | {'int': 6218} |
| `hostPssKb` | {'int': 6218} |
| `kind` | {'str': 6218} |
| `memAvailableKb` | {'int': 6218} |
| `memTotalKb` | {'int': 6218} |
| `otherPssKb` | {'int': 6218} |
| `processes` | {'int': 6218} |
| `pssFallbackProcesses` | {'int': 6218} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
