# sandbox_telemetry_parse — 2026-11-10 21:34:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1332747 lines=2953
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2944 |
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
| `chromeBrowserPssKb` | {'int': 2944} |
| `chromeGpuPssKb` | {'int': 2944} |
| `chromeOtherPssKb` | {'int': 2944} |
| `chromeProcesses` | {'int': 2944} |
| `chromeProfiles` | {'int': 2944} |
| `chromeRendererMaxPssKb` | {'int': 2944} |
| `chromeRendererPssKb` | {'int': 2944} |
| `chromeRenderers` | {'int': 2944} |
| `chromeTabs` | {'int': 2944} |
| `chromeTabsProbedProfiles` | {'int': 2944} |
| `chromeUtilityPssKb` | {'int': 2944} |
| `desktopPssKb` | {'int': 2944} |
| `hostPssKb` | {'int': 2944} |
| `kind` | {'str': 2944} |
| `memAvailableKb` | {'int': 2944} |
| `memTotalKb` | {'int': 2944} |
| `otherPssKb` | {'int': 2944} |
| `processes` | {'int': 2944} |
| `pssFallbackProcesses` | {'int': 2944} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
