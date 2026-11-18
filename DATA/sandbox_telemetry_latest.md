# sandbox_telemetry_parse — 2026-11-18 21:16:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=979290 lines=2173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2164 |
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
| `chromeBrowserPssKb` | {'int': 2164} |
| `chromeGpuPssKb` | {'int': 2164} |
| `chromeOtherPssKb` | {'int': 2164} |
| `chromeProcesses` | {'int': 2164} |
| `chromeProfiles` | {'int': 2164} |
| `chromeRendererMaxPssKb` | {'int': 2164} |
| `chromeRendererPssKb` | {'int': 2164} |
| `chromeRenderers` | {'int': 2164} |
| `chromeTabs` | {'int': 2164} |
| `chromeTabsProbedProfiles` | {'int': 2164} |
| `chromeUtilityPssKb` | {'int': 2164} |
| `desktopPssKb` | {'int': 2164} |
| `hostPssKb` | {'int': 2164} |
| `kind` | {'str': 2164} |
| `memAvailableKb` | {'int': 2164} |
| `memTotalKb` | {'int': 2164} |
| `otherPssKb` | {'int': 2164} |
| `processes` | {'int': 2164} |
| `pssFallbackProcesses` | {'int': 2164} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
