# sandbox_telemetry_parse — 2026-11-07 08:35:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=380182 lines=848
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 839 |
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
| `chromeBrowserPssKb` | {'int': 839} |
| `chromeGpuPssKb` | {'int': 839} |
| `chromeOtherPssKb` | {'int': 839} |
| `chromeProcesses` | {'int': 839} |
| `chromeProfiles` | {'int': 839} |
| `chromeRendererMaxPssKb` | {'int': 839} |
| `chromeRendererPssKb` | {'int': 839} |
| `chromeRenderers` | {'int': 839} |
| `chromeTabs` | {'int': 839} |
| `chromeTabsProbedProfiles` | {'int': 839} |
| `chromeUtilityPssKb` | {'int': 839} |
| `desktopPssKb` | {'int': 839} |
| `hostPssKb` | {'int': 839} |
| `kind` | {'str': 839} |
| `memAvailableKb` | {'int': 839} |
| `memTotalKb` | {'int': 839} |
| `otherPssKb` | {'int': 839} |
| `processes` | {'int': 839} |
| `pssFallbackProcesses` | {'int': 839} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
