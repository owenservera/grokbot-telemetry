# sandbox_telemetry_parse — 2026-11-20 14:32:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1755997 lines=3892
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3881 |
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
| `chromeBrowserPssKb` | {'int': 3881} |
| `chromeGpuPssKb` | {'int': 3881} |
| `chromeOtherPssKb` | {'int': 3881} |
| `chromeProcesses` | {'int': 3881} |
| `chromeProfiles` | {'int': 3881} |
| `chromeRendererMaxPssKb` | {'int': 3881} |
| `chromeRendererPssKb` | {'int': 3881} |
| `chromeRenderers` | {'int': 3881} |
| `chromeTabs` | {'int': 3881} |
| `chromeTabsProbedProfiles` | {'int': 3881} |
| `chromeUtilityPssKb` | {'int': 3881} |
| `desktopPssKb` | {'int': 3881} |
| `hostPssKb` | {'int': 3881} |
| `kind` | {'str': 3881} |
| `memAvailableKb` | {'int': 3881} |
| `memTotalKb` | {'int': 3881} |
| `otherPssKb` | {'int': 3881} |
| `processes` | {'int': 3881} |
| `pssFallbackProcesses` | {'int': 3881} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
