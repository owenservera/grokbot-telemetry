# sandbox_telemetry_parse — 2026-11-11 17:15:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1733560 lines=3839
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3830 |
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
| `chromeBrowserPssKb` | {'int': 3830} |
| `chromeGpuPssKb` | {'int': 3830} |
| `chromeOtherPssKb` | {'int': 3830} |
| `chromeProcesses` | {'int': 3830} |
| `chromeProfiles` | {'int': 3830} |
| `chromeRendererMaxPssKb` | {'int': 3830} |
| `chromeRendererPssKb` | {'int': 3830} |
| `chromeRenderers` | {'int': 3830} |
| `chromeTabs` | {'int': 3830} |
| `chromeTabsProbedProfiles` | {'int': 3830} |
| `chromeUtilityPssKb` | {'int': 3830} |
| `desktopPssKb` | {'int': 3830} |
| `hostPssKb` | {'int': 3830} |
| `kind` | {'str': 3830} |
| `memAvailableKb` | {'int': 3830} |
| `memTotalKb` | {'int': 3830} |
| `otherPssKb` | {'int': 3830} |
| `processes` | {'int': 3830} |
| `pssFallbackProcesses` | {'int': 3830} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
