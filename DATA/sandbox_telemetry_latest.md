# sandbox_telemetry_parse — 2026-11-11 13:58:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1662065 lines=3681
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3672 |
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
| `chromeBrowserPssKb` | {'int': 3672} |
| `chromeGpuPssKb` | {'int': 3672} |
| `chromeOtherPssKb` | {'int': 3672} |
| `chromeProcesses` | {'int': 3672} |
| `chromeProfiles` | {'int': 3672} |
| `chromeRendererMaxPssKb` | {'int': 3672} |
| `chromeRendererPssKb` | {'int': 3672} |
| `chromeRenderers` | {'int': 3672} |
| `chromeTabs` | {'int': 3672} |
| `chromeTabsProbedProfiles` | {'int': 3672} |
| `chromeUtilityPssKb` | {'int': 3672} |
| `desktopPssKb` | {'int': 3672} |
| `hostPssKb` | {'int': 3672} |
| `kind` | {'str': 3672} |
| `memAvailableKb` | {'int': 3672} |
| `memTotalKb` | {'int': 3672} |
| `otherPssKb` | {'int': 3672} |
| `processes` | {'int': 3672} |
| `pssFallbackProcesses` | {'int': 3672} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
