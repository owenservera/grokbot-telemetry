# sandbox_telemetry_parse — 2026-11-27 20:01:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=570226 lines=1267
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1259 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1259} |
| `chromeGpuPssKb` | {'int': 1259} |
| `chromeOtherPssKb` | {'int': 1259} |
| `chromeProcesses` | {'int': 1259} |
| `chromeProfiles` | {'int': 1259} |
| `chromeRendererMaxPssKb` | {'int': 1259} |
| `chromeRendererPssKb` | {'int': 1259} |
| `chromeRenderers` | {'int': 1259} |
| `chromeTabs` | {'int': 1259} |
| `chromeTabsProbedProfiles` | {'int': 1259} |
| `chromeUtilityPssKb` | {'int': 1259} |
| `desktopPssKb` | {'int': 1259} |
| `hostPssKb` | {'int': 1259} |
| `kind` | {'str': 1259} |
| `memAvailableKb` | {'int': 1259} |
| `memTotalKb` | {'int': 1259} |
| `otherPssKb` | {'int': 1259} |
| `processes` | {'int': 1259} |
| `pssFallbackProcesses` | {'int': 1259} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
