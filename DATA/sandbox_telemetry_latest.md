# sandbox_telemetry_parse — 2026-11-11 13:22:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1648946 lines=3652
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3643 |
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
| `chromeBrowserPssKb` | {'int': 3643} |
| `chromeGpuPssKb` | {'int': 3643} |
| `chromeOtherPssKb` | {'int': 3643} |
| `chromeProcesses` | {'int': 3643} |
| `chromeProfiles` | {'int': 3643} |
| `chromeRendererMaxPssKb` | {'int': 3643} |
| `chromeRendererPssKb` | {'int': 3643} |
| `chromeRenderers` | {'int': 3643} |
| `chromeTabs` | {'int': 3643} |
| `chromeTabsProbedProfiles` | {'int': 3643} |
| `chromeUtilityPssKb` | {'int': 3643} |
| `desktopPssKb` | {'int': 3643} |
| `hostPssKb` | {'int': 3643} |
| `kind` | {'str': 3643} |
| `memAvailableKb` | {'int': 3643} |
| `memTotalKb` | {'int': 3643} |
| `otherPssKb` | {'int': 3643} |
| `processes` | {'int': 3643} |
| `pssFallbackProcesses` | {'int': 3643} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
