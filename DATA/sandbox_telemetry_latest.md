# sandbox_telemetry_parse — 2026-11-09 17:37:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=769323 lines=1708
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1699 |
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
| `chromeBrowserPssKb` | {'int': 1699} |
| `chromeGpuPssKb` | {'int': 1699} |
| `chromeOtherPssKb` | {'int': 1699} |
| `chromeProcesses` | {'int': 1699} |
| `chromeProfiles` | {'int': 1699} |
| `chromeRendererMaxPssKb` | {'int': 1699} |
| `chromeRendererPssKb` | {'int': 1699} |
| `chromeRenderers` | {'int': 1699} |
| `chromeTabs` | {'int': 1699} |
| `chromeTabsProbedProfiles` | {'int': 1699} |
| `chromeUtilityPssKb` | {'int': 1699} |
| `desktopPssKb` | {'int': 1699} |
| `hostPssKb` | {'int': 1699} |
| `kind` | {'str': 1699} |
| `memAvailableKb` | {'int': 1699} |
| `memTotalKb` | {'int': 1699} |
| `otherPssKb` | {'int': 1699} |
| `processes` | {'int': 1699} |
| `pssFallbackProcesses` | {'int': 1699} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
