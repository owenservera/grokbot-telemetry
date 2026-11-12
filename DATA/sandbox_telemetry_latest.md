# sandbox_telemetry_parse — 2026-11-12 13:58:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2159425 lines=4780
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4771 |
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
| `chromeBrowserPssKb` | {'int': 4771} |
| `chromeGpuPssKb` | {'int': 4771} |
| `chromeOtherPssKb` | {'int': 4771} |
| `chromeProcesses` | {'int': 4771} |
| `chromeProfiles` | {'int': 4771} |
| `chromeRendererMaxPssKb` | {'int': 4771} |
| `chromeRendererPssKb` | {'int': 4771} |
| `chromeRenderers` | {'int': 4771} |
| `chromeTabs` | {'int': 4771} |
| `chromeTabsProbedProfiles` | {'int': 4771} |
| `chromeUtilityPssKb` | {'int': 4771} |
| `desktopPssKb` | {'int': 4771} |
| `hostPssKb` | {'int': 4771} |
| `kind` | {'str': 4771} |
| `memAvailableKb` | {'int': 4771} |
| `memTotalKb` | {'int': 4771} |
| `otherPssKb` | {'int': 4771} |
| `processes` | {'int': 4771} |
| `pssFallbackProcesses` | {'int': 4771} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
