# sandbox_telemetry_parse — 2026-11-10 17:59:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1254436 lines=2780
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2771 |
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
| `chromeBrowserPssKb` | {'int': 2771} |
| `chromeGpuPssKb` | {'int': 2771} |
| `chromeOtherPssKb` | {'int': 2771} |
| `chromeProcesses` | {'int': 2771} |
| `chromeProfiles` | {'int': 2771} |
| `chromeRendererMaxPssKb` | {'int': 2771} |
| `chromeRendererPssKb` | {'int': 2771} |
| `chromeRenderers` | {'int': 2771} |
| `chromeTabs` | {'int': 2771} |
| `chromeTabsProbedProfiles` | {'int': 2771} |
| `chromeUtilityPssKb` | {'int': 2771} |
| `desktopPssKb` | {'int': 2771} |
| `hostPssKb` | {'int': 2771} |
| `kind` | {'str': 2771} |
| `memAvailableKb` | {'int': 2771} |
| `memTotalKb` | {'int': 2771} |
| `otherPssKb` | {'int': 2771} |
| `processes` | {'int': 2771} |
| `pssFallbackProcesses` | {'int': 2771} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
