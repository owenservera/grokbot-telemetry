# sandbox_telemetry_parse — 2026-11-10 20:21:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1304228 lines=2890
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2881 |
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
| `chromeBrowserPssKb` | {'int': 2881} |
| `chromeGpuPssKb` | {'int': 2881} |
| `chromeOtherPssKb` | {'int': 2881} |
| `chromeProcesses` | {'int': 2881} |
| `chromeProfiles` | {'int': 2881} |
| `chromeRendererMaxPssKb` | {'int': 2881} |
| `chromeRendererPssKb` | {'int': 2881} |
| `chromeRenderers` | {'int': 2881} |
| `chromeTabs` | {'int': 2881} |
| `chromeTabsProbedProfiles` | {'int': 2881} |
| `chromeUtilityPssKb` | {'int': 2881} |
| `desktopPssKb` | {'int': 2881} |
| `hostPssKb` | {'int': 2881} |
| `kind` | {'str': 2881} |
| `memAvailableKb` | {'int': 2881} |
| `memTotalKb` | {'int': 2881} |
| `otherPssKb` | {'int': 2881} |
| `processes` | {'int': 2881} |
| `pssFallbackProcesses` | {'int': 2881} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
