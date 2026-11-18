# sandbox_telemetry_parse — 2026-11-19 00:32:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1045757 lines=2320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2311 |
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
| `chromeBrowserPssKb` | {'int': 2311} |
| `chromeGpuPssKb` | {'int': 2311} |
| `chromeOtherPssKb` | {'int': 2311} |
| `chromeProcesses` | {'int': 2311} |
| `chromeProfiles` | {'int': 2311} |
| `chromeRendererMaxPssKb` | {'int': 2311} |
| `chromeRendererPssKb` | {'int': 2311} |
| `chromeRenderers` | {'int': 2311} |
| `chromeTabs` | {'int': 2311} |
| `chromeTabsProbedProfiles` | {'int': 2311} |
| `chromeUtilityPssKb` | {'int': 2311} |
| `desktopPssKb` | {'int': 2311} |
| `hostPssKb` | {'int': 2311} |
| `kind` | {'str': 2311} |
| `memAvailableKb` | {'int': 2311} |
| `memTotalKb` | {'int': 2311} |
| `otherPssKb` | {'int': 2311} |
| `processes` | {'int': 2311} |
| `pssFallbackProcesses` | {'int': 2311} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
