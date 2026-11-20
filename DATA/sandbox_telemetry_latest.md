# sandbox_telemetry_parse — 2026-11-20 09:21:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1656049 lines=3671
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3660 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3660} |
| `chromeGpuPssKb` | {'int': 3660} |
| `chromeOtherPssKb` | {'int': 3660} |
| `chromeProcesses` | {'int': 3660} |
| `chromeProfiles` | {'int': 3660} |
| `chromeRendererMaxPssKb` | {'int': 3660} |
| `chromeRendererPssKb` | {'int': 3660} |
| `chromeRenderers` | {'int': 3660} |
| `chromeTabs` | {'int': 3660} |
| `chromeTabsProbedProfiles` | {'int': 3660} |
| `chromeUtilityPssKb` | {'int': 3660} |
| `desktopPssKb` | {'int': 3660} |
| `hostPssKb` | {'int': 3660} |
| `kind` | {'str': 3660} |
| `memAvailableKb` | {'int': 3660} |
| `memTotalKb` | {'int': 3660} |
| `otherPssKb` | {'int': 3660} |
| `processes` | {'int': 3660} |
| `pssFallbackProcesses` | {'int': 3660} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
