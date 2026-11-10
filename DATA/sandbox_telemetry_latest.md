# sandbox_telemetry_parse — 2026-11-10 07:03:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1030341 lines=2285
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2276 |
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
| `chromeBrowserPssKb` | {'int': 2276} |
| `chromeGpuPssKb` | {'int': 2276} |
| `chromeOtherPssKb` | {'int': 2276} |
| `chromeProcesses` | {'int': 2276} |
| `chromeProfiles` | {'int': 2276} |
| `chromeRendererMaxPssKb` | {'int': 2276} |
| `chromeRendererPssKb` | {'int': 2276} |
| `chromeRenderers` | {'int': 2276} |
| `chromeTabs` | {'int': 2276} |
| `chromeTabsProbedProfiles` | {'int': 2276} |
| `chromeUtilityPssKb` | {'int': 2276} |
| `desktopPssKb` | {'int': 2276} |
| `hostPssKb` | {'int': 2276} |
| `kind` | {'str': 2276} |
| `memAvailableKb` | {'int': 2276} |
| `memTotalKb` | {'int': 2276} |
| `otherPssKb` | {'int': 2276} |
| `processes` | {'int': 2276} |
| `pssFallbackProcesses` | {'int': 2276} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
