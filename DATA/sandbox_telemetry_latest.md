# sandbox_telemetry_parse — 2026-11-12 04:11:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1963520 lines=4347
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4338 |
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
| `chromeBrowserPssKb` | {'int': 4338} |
| `chromeGpuPssKb` | {'int': 4338} |
| `chromeOtherPssKb` | {'int': 4338} |
| `chromeProcesses` | {'int': 4338} |
| `chromeProfiles` | {'int': 4338} |
| `chromeRendererMaxPssKb` | {'int': 4338} |
| `chromeRendererPssKb` | {'int': 4338} |
| `chromeRenderers` | {'int': 4338} |
| `chromeTabs` | {'int': 4338} |
| `chromeTabsProbedProfiles` | {'int': 4338} |
| `chromeUtilityPssKb` | {'int': 4338} |
| `desktopPssKb` | {'int': 4338} |
| `hostPssKb` | {'int': 4338} |
| `kind` | {'str': 4338} |
| `memAvailableKb` | {'int': 4338} |
| `memTotalKb` | {'int': 4338} |
| `otherPssKb` | {'int': 4338} |
| `processes` | {'int': 4338} |
| `pssFallbackProcesses` | {'int': 4338} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
