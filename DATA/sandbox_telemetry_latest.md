# sandbox_telemetry_parse — 2026-11-12 02:53:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1938627 lines=4292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4283 |
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
| `chromeBrowserPssKb` | {'int': 4283} |
| `chromeGpuPssKb` | {'int': 4283} |
| `chromeOtherPssKb` | {'int': 4283} |
| `chromeProcesses` | {'int': 4283} |
| `chromeProfiles` | {'int': 4283} |
| `chromeRendererMaxPssKb` | {'int': 4283} |
| `chromeRendererPssKb` | {'int': 4283} |
| `chromeRenderers` | {'int': 4283} |
| `chromeTabs` | {'int': 4283} |
| `chromeTabsProbedProfiles` | {'int': 4283} |
| `chromeUtilityPssKb` | {'int': 4283} |
| `desktopPssKb` | {'int': 4283} |
| `hostPssKb` | {'int': 4283} |
| `kind` | {'str': 4283} |
| `memAvailableKb` | {'int': 4283} |
| `memTotalKb` | {'int': 4283} |
| `otherPssKb` | {'int': 4283} |
| `processes` | {'int': 4283} |
| `pssFallbackProcesses` | {'int': 4283} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
