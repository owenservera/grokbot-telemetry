# sandbox_telemetry_parse — 2026-11-06 21:49:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=183033 lines=412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 403 |
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
| `chromeBrowserPssKb` | {'int': 403} |
| `chromeGpuPssKb` | {'int': 403} |
| `chromeOtherPssKb` | {'int': 403} |
| `chromeProcesses` | {'int': 403} |
| `chromeProfiles` | {'int': 403} |
| `chromeRendererMaxPssKb` | {'int': 403} |
| `chromeRendererPssKb` | {'int': 403} |
| `chromeRenderers` | {'int': 403} |
| `chromeTabs` | {'int': 403} |
| `chromeTabsProbedProfiles` | {'int': 403} |
| `chromeUtilityPssKb` | {'int': 403} |
| `desktopPssKb` | {'int': 403} |
| `hostPssKb` | {'int': 403} |
| `kind` | {'str': 403} |
| `memAvailableKb` | {'int': 403} |
| `memTotalKb` | {'int': 403} |
| `otherPssKb` | {'int': 403} |
| `processes` | {'int': 403} |
| `pssFallbackProcesses` | {'int': 403} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
