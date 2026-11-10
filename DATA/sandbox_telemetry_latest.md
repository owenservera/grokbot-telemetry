# sandbox_telemetry_parse — 2026-11-10 19:34:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1287490 lines=2853
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2844 |
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
| `chromeBrowserPssKb` | {'int': 2844} |
| `chromeGpuPssKb` | {'int': 2844} |
| `chromeOtherPssKb` | {'int': 2844} |
| `chromeProcesses` | {'int': 2844} |
| `chromeProfiles` | {'int': 2844} |
| `chromeRendererMaxPssKb` | {'int': 2844} |
| `chromeRendererPssKb` | {'int': 2844} |
| `chromeRenderers` | {'int': 2844} |
| `chromeTabs` | {'int': 2844} |
| `chromeTabsProbedProfiles` | {'int': 2844} |
| `chromeUtilityPssKb` | {'int': 2844} |
| `desktopPssKb` | {'int': 2844} |
| `hostPssKb` | {'int': 2844} |
| `kind` | {'str': 2844} |
| `memAvailableKb` | {'int': 2844} |
| `memTotalKb` | {'int': 2844} |
| `otherPssKb` | {'int': 2844} |
| `processes` | {'int': 2844} |
| `pssFallbackProcesses` | {'int': 2844} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
