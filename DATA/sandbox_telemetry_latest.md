# sandbox_telemetry_parse — 2026-11-10 19:59:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1294722 lines=2869
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2860 |
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
| `chromeBrowserPssKb` | {'int': 2860} |
| `chromeGpuPssKb` | {'int': 2860} |
| `chromeOtherPssKb` | {'int': 2860} |
| `chromeProcesses` | {'int': 2860} |
| `chromeProfiles` | {'int': 2860} |
| `chromeRendererMaxPssKb` | {'int': 2860} |
| `chromeRendererPssKb` | {'int': 2860} |
| `chromeRenderers` | {'int': 2860} |
| `chromeTabs` | {'int': 2860} |
| `chromeTabsProbedProfiles` | {'int': 2860} |
| `chromeUtilityPssKb` | {'int': 2860} |
| `desktopPssKb` | {'int': 2860} |
| `hostPssKb` | {'int': 2860} |
| `kind` | {'str': 2860} |
| `memAvailableKb` | {'int': 2860} |
| `memTotalKb` | {'int': 2860} |
| `otherPssKb` | {'int': 2860} |
| `processes` | {'int': 2860} |
| `pssFallbackProcesses` | {'int': 2860} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
